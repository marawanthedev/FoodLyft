import 'package:flutter/material.dart';
import "../../components/cartItem.dart";
import "../../services/hexColor.dart";
import "../../components/button.dart";

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();

  final containerWidth = 350.0;
  final cartPriceDetailsHeight = 35.0;
}

class _CartScreenState extends State<CartScreen> {
  TextStyle fadedStyle =
      TextStyle(color: HexColor("667C8A"), fontSize: 20, fontFamily: "Poppins");
  TextStyle boldedStyle = TextStyle(
      color: HexColor("000000"),
      fontSize: 20,
      fontFamily: "Poppins",
      fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
            padding: EdgeInsets.only(left: 100),
            child: Text(
              "Cart",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 22.5,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            )),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: widget.containerWidth,
              width: 400,
              color: Colors.white,
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CartItem(
                          image: 'assets/images/burger-1.png',
                          title: "Chiptole",
                          isTouched: true,
                          press: () {},
                        ),
                        CartItem(
                          image: 'assets/images/burger-2.png',
                          title: "Beef Burger",
                          press: () {},
                        ),
                        CartItem(
                          image: 'assets/images/burger-1.png',
                          title: "Chiptole",
                          press: () {},
                        ),
                        CartItem(
                          image: 'assets/images/burger-2.png',
                          title: "Beef Burger",
                          press: () {},
                        ),
                      ],
                    ),
                  )),
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
                  Text("\$ 62.85", style: boldedStyle)
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
                  Text("\$ 2.25", style: boldedStyle)
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
                    "\$ 0.25",
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
                  Text("\$ 65.35", style: boldedStyle)
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
                onPressed: () => print("PRESSED"),
                setState: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
