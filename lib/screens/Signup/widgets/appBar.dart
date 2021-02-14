import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        //backgroundColor: Colors.white,
        //iconTheme: IconThemeData(
        // color: Colors.black, //change your color here
        //),
        elevation: 0,
        title: Container(
          margin: EdgeInsets.only(left: 60),
          child: Text(
            "Create Account ",
            style: TextStyle(
                //color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 25,
                fontWeight: FontWeight.normal),
          ),
        ));
  }
}
