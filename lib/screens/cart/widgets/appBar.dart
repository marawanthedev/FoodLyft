import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  // const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Container(
          padding: EdgeInsets.only(left: 100),
          child: Text(
            "Cart",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 22.5,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          )),
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
    );
  }
}
