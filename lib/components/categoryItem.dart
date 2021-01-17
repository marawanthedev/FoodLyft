import 'package:flutter/material.dart';
import 'package:foodlyft/providers/restaurants.dart';
import 'package:foodlyft/screens/FoodMenu/Food_Menu2.dart';
import 'package:provider/provider.dart';
import '../screens/Restaurantlist/Constants.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  String image;
  final bool isTouched;
  final Function press;
  var color;
  CategoryItem({
    this.id,
    this.title,
    this.image,
    this.isTouched = false,
    this.press,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print("my index is #$id");
              Navigator.of(context).pushNamed(
                FoodMenu2.routeName,
                arguments: id,
              );
            },
            child: Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(title,
              style: TextStyle(
                  fontSize: 20, color: color, fontWeight: FontWeight.bold)),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2),
            height: 3,
            width: 20,
            decoration: BoxDecoration(color: appMainColor),
          )
        ],
      ),
    );
  }
}
