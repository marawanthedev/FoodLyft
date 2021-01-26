import 'package:flutter/material.dart';
import "./loginButton.dart";
import "../../../services/hexColor.dart";

class CustomFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Have an account?",
              style: TextStyle(
                  color: HexColor("123C69"),
                  fontSize: 20,
                  fontFamily: 'Roboto'),
            ),
            ToLoginBtn()
          ],
        ));
  }
}
