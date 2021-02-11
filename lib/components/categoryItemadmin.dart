import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodlyft/providers/restaurants.dart';
import 'package:foodlyft/screens/FoodMenu/Food_Menu2.dart';
import 'package:provider/provider.dart';
import '../screens/Restaurantlist/Constants.dart';
import '../screens/admin/edit-restaurant.dart';

class CategoryItem2 extends StatefulWidget {
  //final String id;
  final String title;
  final String image;
  final String email;
  final String password;
  final bool isTouched;
  final Function press;
  final DocumentReference dID;
  var color;
  CategoryItem2({
    //this.id,
    this.title,
    this.image,
    this.isTouched = false,
    this.press,
    this.color,
    this.email,
    this.password,
    this.dID,
  });

  @override
  _CategoryItem2State createState() => _CategoryItem2State();
}

class _CategoryItem2State extends State<CategoryItem2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Edit_restaurant(
                            title: widget.title,
                            password: widget.password,
                            email: widget.email,
                            image: widget.image,
                            dId: widget.dID,
                          )));
            },
            child: Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.image), fit: BoxFit.fill),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(widget.title,
              style: TextStyle(
                  fontSize: 20,
                  color: widget.color,
                  fontWeight: FontWeight.bold)),
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
