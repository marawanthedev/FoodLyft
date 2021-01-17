import 'dart:ui';
import 'package:flutter/material.dart';

import '../../components/MenuItems_builder.dart';
import '../../providers/restaurants.dart';
import '../../screens/Restaurantlist/Restaurant_List.dart';
import '../../screens/fooddetailsscreen/food_details.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../screens/Restaurantlist/Constants.dart';

class FoodMenu2 extends StatelessWidget {
  static const routeName = '/Food_Menu2';
  @override
  Widget build(BuildContext context) {
    final restaurantId = ModalRoute.of(context).settings.arguments as String;
    final loadedRestaurant = Provider.of<Restaurants>(
      context,
      listen: false,
    ).findById(restaurantId);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SlidingUpPanel(
          maxHeight: height,
          minHeight: height / 1.6,
          body: Container(
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                Image(
                  image: AssetImage(loadedRestaurant.image),
                  fit: BoxFit.cover,
                  height: height / 2,
                  width: width,
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      color: white,
                      size: 35,
                    ),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RestaurantMenu())),
                  ),
                ),
              ],
            ),
          ),
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.grey[100],
          panel: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 30.0, 20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        loadedRestaurant.title,
                        style: TextStyle(
                            fontSize: 26.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "4.6",
                            style: TextStyle(
                              color: aTextLightColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: appMainColor,
                            size: 20.0,
                          )
                        ],
                      )
                    ],
                  ),
                  Text(
                    "Closes at 11 pmmm",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  Container(
                    height: height,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FoodDetails()));
                            print("Item$index");
                          },
                          child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: <Widget>[
                                  ItemsBuilder(
                                      image: loadedRestaurant.image,
                                      itemName: loadedRestaurant.title,
                                      desc: loadedRestaurant.description,
                                      price: "50"),
                                ],
                              )),
                        );
                      },
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
