import 'package:flutter/material.dart';
import 'package:foodlyft/providers/restaurants.provider.dart';
import 'package:provider/provider.dart';
import '../components/categoryItem.dart';
import '../screens/FoodMenu/Food_Menu2_view.dart';

class CategoryRowBuilder extends StatelessWidget {
  //final String categoryTitle;

  //CategoryRowBuilder({this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Restaurants>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              //data.restaurants[data.tempCategoryIndex],
              data.getCategory(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: <Widget>[
                    CategoryItem(
                      id: data.restList[data.tempCategoryIndex][index].id,
                      image: data.restList[data.tempCategoryIndex][index].image,
                      title: data.restList[data.tempCategoryIndex][index].title,
                      isTouched: true,
                      index: index,
                    ),
                  ],
                ),
              );
            },
            itemCount: data.restList[data.tempCategoryIndex].length,
          ),
        )
      ],
    );
  }
}
