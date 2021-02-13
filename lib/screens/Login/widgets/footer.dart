import 'package:flutter/material.dart';
import '../../../services/general/hexColor.dart';

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
                RaisedButton(
                  color: Colors.white,
                  elevation: 0,
                  highlightElevation: 0,
                  focusElevation: 0,
                  onPressed: () {
                    print("gg");
                    Navigator.pushNamed(context, "/Signup");
                  },
                  child: Text(
                    "Sign up.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Roboto'),
                  ),
                )
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
