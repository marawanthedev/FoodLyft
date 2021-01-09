import 'package:flutter/material.dart';
import '../screens/Restaurantlist/Constants.dart';

class CategoryBuilder extends StatelessWidget {
  final Color colora;
  final String menu;
  final String menuImage;
  final Color menuColor;

  CategoryBuilder({this.colora, this.menu, this.menuImage, this.menuColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 13),
      child: Container(
        alignment: Alignment.center,
        height: 40.0,
        width: 110.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0), color: colora),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(menuImage),
              height: 20.0,
              width: 20.0,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              menu,
              style: TextStyle(
                color: menuColor,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
