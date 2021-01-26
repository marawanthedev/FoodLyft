import 'package:flutter/material.dart';
import 'package:foodlyft/providers/cart.provider.dart';
import '../../providers/restaurants.provider.dart';
import 'package:provider/provider.dart';
import "../../components/cartItem.dart";
import "../../services/hexColor.dart";
import "../../components/button.dart";
import "./widgets/appBar.dart";
import "./helpers/methods.dart";

class CartScreen extends StatefulWidget {
  static const routeName = '/Food_Menu2';
  var cartProvider;
  @override
  _CartScreenState createState() => _CartScreenState();

  final containerWidth = 350.0;

  final cartPriceDetailsHeight = 35.0;
}

class _CartScreenState extends State<CartScreen> {
  double subTotal = 0;

  TextStyle fadedStyle =
      TextStyle(color: HexColor("667C8A"), fontSize: 20, fontFamily: "Poppins");
  TextStyle boldedStyle = TextStyle(
      color: HexColor("000000"),
      fontSize: 20,
      fontFamily: "Poppins",
      fontWeight: FontWeight.normal);

  Widget getCartItems() {
   

    subTotal = resetSubTotal();
    List<Widget> list = new List<Widget>();

    for (var i = 0; i < widget.cartProvider.items.length; i++) {
      subTotal = updateSubTotal(widget.cartProvider.items[i].price,
          widget.cartProvider.items[i].quantity, subTotal);

      list.add(CartItem(
        heroTag: "$i",
        image: widget.cartProvider.items[i].imgSrc,
        isTouched: i == 0 ? true : false,
        title: widget.cartProvider.items[i].title,
        deleteItem: () {
          this.setState(() {
            widget.cartProvider.deleteItem(i);
          });
        },
        quantity: widget.cartProvider.items[i].quantity,
        price: widget.cartProvider.items[i].price,
        increaseQuantity: () {
          widget.cartProvider.increaseQuantity(i);
          setState(() {});
        },
        decreaseQuantity: () {
          int currentQuantity = widget.cartProvider.items[i].quantity;

          if (currentQuantity == 1) {
            widget.cartProvider.deleteItem(i);
          } else {
            widget.cartProvider.decreaseQuantity(i);
          }

          setState(() {});
        },
      ));
    }
    return new Column(
        mainAxisAlignment: MainAxisAlignment.start, children: list);
  }

  @override
  Widget build(BuildContext context) {
    widget.cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      backgroundColor: Colors
          .white, 
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: widget.containerWidth,
              width: 450,
              color: Colors.white,
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(child: getCartItems())),
            ),
            Container(
              height: widget.cartPriceDetailsHeight,
              width: widget.containerWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: fadedStyle,
                  ),
                  Text("\$ $subTotal", style: boldedStyle)
                ],
              ),
            ),
            Container(
              height: widget.cartPriceDetailsHeight,
              width: widget.containerWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pick-Up Charge", style: fadedStyle),
                  Text("\$ ${getPickUpCharge(subTotal)}", style: boldedStyle)
                ],
              ),
            ),
            Container(
              width: widget.containerWidth,
              height: widget.cartPriceDetailsHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tax", style: fadedStyle),
                  Text(
                    "\$ ${getTax(subTotal)}",
                    style: boldedStyle,
                  )
                ],
              ),
            ),
            Container(
              height: widget.cartPriceDetailsHeight,
              width: widget.containerWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total", style: boldedStyle),
                  Text("\$ ${getTotal(subTotal)}", style: boldedStyle)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: customButton(
                width: 360.0,
                height: 50.0,
                buttonText: "Proceed to Payment",
                backgroundColor: HexColor("F2A22C"),
                onPressed: () =>
                    {Navigator.pushNamed(context, "/payment_form")},
                setState: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
