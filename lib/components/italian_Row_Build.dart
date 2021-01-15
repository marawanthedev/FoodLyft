import 'package:flutter/material.dart';
import './restaurant_list_category.dart';
import '../screens/FoodMenu/Food_Menu2.dart';

class ItalianRowBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // separatorBuilder: (context, index) => Text(
        //   "Western",
        //   style: TextStyle(
        //     fontSize: 25,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        itemBuilder: (context, index) {
          return MaterialButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => FoodMenu2())),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CategoryItem(
                    image: 'assets/images/fastfood.jpg',
                    title: "Fast Food",
                    isTouched: true,
                    press: () {},
                  ),
                  CategoryItem(
                    image: 'assets/images/western.jpg',
                    title: "Western Food",
                    press: () {},
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 2,
      ),
    );
  }
}
