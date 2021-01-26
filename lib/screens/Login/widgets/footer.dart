import 'package:flutter/material.dart';
import "../../../services/hexColor.dart";

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "First Time here?",
                  style: TextStyle(
                      color: HexColor("123C69"),
                      fontSize: 20,
                      fontFamily: 'Roboto'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Sign up.",
                  style: TextStyle(
                      color: Colors.black, fontSize: 20, fontFamily: 'Roboto'),
                ),
              ],
            )),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: HexColor("123C69"),
                      fontSize: 20,
                      fontFamily: 'Roboto'),
                )
              ],
            ))
      ],
    );
  }
}
