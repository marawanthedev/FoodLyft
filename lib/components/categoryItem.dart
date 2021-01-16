import 'package:flutter/material.dart';
import '../screens/Restaurantlist/Constants.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final bool isTouched;
  final Function press;
  var color;
  CategoryItem([
    this.id,
    this.title,
    this.image,
    this.isTouched = false,
    this.press,
    this.color,
  ]);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Text(title,
                style: TextStyle(
                    fontSize: 20, color: color, fontWeight: FontWeight.bold)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2),
              height: 5,
              width: 20,
              decoration: BoxDecoration(color: appMainColor),
            )
          ],
        ),
      ),
    );
  }
}
