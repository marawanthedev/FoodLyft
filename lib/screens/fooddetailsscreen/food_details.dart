import 'package:flutter/material.dart';
import 'package:foodlyft/providers/restaurants.dart';
import 'package:provider/provider.dart';
import '../../components/item_title.dart';
import '../../screens/FoodMenu/Food_Menu2.dart';
import '../../screens/Restaurantlist/Constants.dart';
import '../../screens/cart/cart.dart';

class FoodDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loaded = Provider.of<Restaurants>(context);

    return Scaffold(
      backgroundColor: appMainColor,
      appBar: AppBar(
        title: Center(
            child: Text(
          loaded.items[loaded.restaurantId].title,
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
    final loaded = Provider.of<Restaurants>(context);
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          child: Image.asset(
            loaded.items[loaded.restaurantId].image,
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
                ItemTitle(
                  name: loaded.items[loaded.restaurantId].itemsa[loaded.ind].itemName,
                  numOfReviews: 10,
                  rating: 4,
                  price: loaded
                      .items[loaded.restaurantId].itemsa[loaded.ind].price,
                  onRatingChanged: (value) {},
                ),
                Text(
                  loaded.items[loaded.restaurantId].itemsa[loaded.ind].description,
                  style: TextStyle(
                      height: 1.5,
                      color: aTextLightColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartScreen()));
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
    );
  }
}
