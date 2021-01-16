

import 'package:flutter/material.dart';
import '../../components/item_title.dart';
import '../../screens/FoodMenu/Food_Menu2.dart';
import '../../screens/Restaurantlist/Constants.dart';
import '../../screens/cart/cart.dart';

class FoodDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        title: Center(
            child: Text(
          "Restaurant Name",
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => FoodMenu2()));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Image.asset(
          "assets/images/fastfood.jpg",
          height: size.height * 0.4,
          // width: double.infinity,
          // fit: BoxFit.fill,
          scale: 1.5,
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
                ItemTitle(
                  name: "Item name",
                  numOfReviews: 10,
                  rating: 4,
                  price: 20,
                  onRatingChanged: (value) {},
                ),
                Text(
                  "A hamburger (also burger for short) is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. ... A hamburger topped with cheese is called a cheeseburger",
                  style: TextStyle(height: 1.5, color: aTextLightColor),
                ),
                SizedBox(height: 5),
                Container(
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CartScreen()),
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
