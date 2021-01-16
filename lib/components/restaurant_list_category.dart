import 'package:flutter/material.dart';
import '../screens/Restaurantlist/Constants.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  String image;
  final bool isTouched;
  final Function press;
  CategoryItem({this.title, this.isTouched = false, this.press, this.image, this.id});

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
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: isTouched
                  ? TextStyle(
                      fontSize: 20,
                      color: aTextColor,
                      fontWeight: FontWeight.bold)
                  : TextStyle(fontSize: 14),
            ),
            if (isTouched)
              Container(
                margin: EdgeInsets.symmetric(vertical: 2),
                height: 3,
                width: 20,
                decoration: BoxDecoration(color: appMainColor),
              )
          ],
        ),
      ),
    );
  }
}
