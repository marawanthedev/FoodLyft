import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:foodlyft/app/dependencies.dart';
import 'package:foodlyft/screens/FoodMenu/Food_Menu2_viewmodel.dart';
import 'package:foodlyft/screens/Restaurantlist/Restaurant_List_viewmodel.dart';
import 'package:foodlyft/screens/view.dart';

import '../../components/MenuItems_builder.dart';
import '../../providers/restaurants.provider.dart';
import '../../screens/Restaurantlist/Restaurant_List_view.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../screens/Restaurantlist/Constants.dart';
import 'package:provider/provider.dart';

class FoodMenu2 extends StatefulWidget {
  FoodMenu2({Key key}) : super(key: key);

  @override
  _FoodMenu2State createState() => _FoodMenu2State();
}

class _FoodMenu2State extends State<FoodMenu2> {
  //final routName ="/Food_Menu2";
  @override
  Widget build(BuildContext context) {
    final loaded = Provider.of<Restaurants>(
      context,
      listen: true,
    );
    //final loaded.restaurantObject = loaded.findById(
    //  loaded.restList[loaded.tempCategoryIndex][loaded.tempItem].id);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SelectorView<FoodMenu2ViewModel, int>(
      initViewmodel: (foodMenu2ViewModel) => foodMenu2ViewModel.restaurant =
          dependency<RestaurantViewModel>().restaurant,
      selector: (_, foodMenu2ViewModel) =>
          foodMenu2ViewModel.busy ? 0 : loaded.restaurantObject.itemsa.length,
      builder: (context, foodMenu2ViewModel, __) {
        return SlidingUpPanel(
            maxHeight: height,
            minHeight: height / 1.6,
            body: Container(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(loaded.restaurantObject.image),
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
                          loaded.restaurantObject.title,
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
                      "Closes at 11 pm",
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
                              loaded.ind = index;
                              Navigator.pushNamed(
                                context,
                                "/food_details",
                              );
                              print("Item$index");
                              print("Item ${loaded.restaurantId}");
                            },
                            child: Column(
                              children: <Widget>[
                                ItemsBuilder(
                                    image: loaded
                                        .restaurantObject.itemsa[index].image,
                                    itemName: loaded.restaurantObject
                                        .itemsa[index].itemName,
                                    desc: loaded.restaurantObject.itemsa[index]
                                        .description,
                                    price: loaded
                                        .restaurantObject.itemsa[index].price),
                              ],
                            ),
                          );
                        },
                        itemCount: loaded.restaurantObject.itemsa.length,
                      ),
                    ),
                  ],
                ),
              ),
            ));
      },
    ));
  }
}
