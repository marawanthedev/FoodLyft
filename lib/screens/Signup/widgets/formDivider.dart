import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Container(
            height: 1.0,
            width: 115.0,
            color: Colors.black,
          ),
        ),
        Container(
          child: Text(
            "or",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Container(
            height: 1.0,
            width: 115.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
