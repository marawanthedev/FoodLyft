import 'package:flutter/material.dart';

class ToLoginBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        // Validate returns true if the form is valid, otherwise false.
        Navigator.pushNamed(context, "/login");
      },
      elevation: 0,
      hoverElevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: BorderSide(
              // color: Colors.white,
              )),
      child: Text("Login",
          style: TextStyle(
              //color: Colors.black,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.normal,
              fontSize: 20)),
      // color: Colors.white,
    );
  }
}
