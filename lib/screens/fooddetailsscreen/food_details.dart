import 'package:flutter/material.dart';
import '../../providers/cart.provider.dart';
import '../../providers/restaurants.provider.dart';
import 'package:provider/provider.dart';
import '../../components/item_title.dart';
import '../../screens/FoodMenu/Food_Menu2.dart';
import '../../screens/Restaurantlist/Constants.dart';
import '../../components/badge.dart';

class FoodDetails extends StatefulWidget {
  @override
  _FoodDetailsState createState() => _FoodDetailsState();
  var cartProvider, restaurantProvider;
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    widget.cartProvider = Provider.of<CartProvider>(context);
    widget.restaurantProvider = Provider.of<Restaurants>(context);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appMainColor,
      appBar: AppBar(
        title: Center(
            child: Text(
          widget.restaurantProvider
              .items[widget.restaurantProvider.restaurantId].title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
        backgroundColor: appMainColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => FoodMenu2()));
          },
        ),
        actions: <Widget>[
          Badge(
            value: widget.cartProvider.itemCount.toString(),
            child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/cart");
                }),
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: Image.asset(
              widget.restaurantProvider
                  .items[widget.restaurantProvider.restaurantId].image,
              height: size.height * 0.45,
              width: size.width,
              fit: BoxFit.fill,
              scale: 1.5,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Container(
                width: 100,
                height: 100,
                decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    image:  DecorationImage(
                      fit:BoxFit.fill,
                      image:  AssetImage(
                        widget.restaurantProvider
                          .items[widget.restaurantProvider.restaurantId]
                          .itemsa[widget.restaurantProvider.ind]
                          .image,
                      )
                    )
                ),
              ),
                  ),
                  
                  ItemTitle(
                    name: widget
                        .restaurantProvider
                        .items[widget.restaurantProvider.restaurantId]
                        .itemsa[widget.restaurantProvider.ind]
                        .itemName,
                    numOfReviews: 10,
                    rating: 4,
                    price: widget
                        .restaurantProvider
                        .items[widget.restaurantProvider.restaurantId]
                        .itemsa[widget.restaurantProvider.ind]
                        .price,
                    onRatingChanged: (value) {},
                  ),
                  Text(
                    widget
                        .restaurantProvider
                        .items[widget.restaurantProvider.restaurantId]
                        .itemsa[widget.restaurantProvider.ind]
                        .description,
                    style: TextStyle(
                        height: 1.5,
                        color: aTextLightColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 22),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      // height: 40,
                      padding: EdgeInsets.all(20),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: appMainColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            widget.cartProvider.addItem(
                                widget.restaurantProvider.getItem(
                                    widget.restaurantProvider.restaurantId,
                                    widget.restaurantProvider.ind)
                                    );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.add_shopping_cart),
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
