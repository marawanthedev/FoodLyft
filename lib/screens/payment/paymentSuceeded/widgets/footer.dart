// Navigator.pushNamed(context, "/payment_form");
import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  final mainFont;
  final colors;
  CustomFooter(this.mainFont, this.colors);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          width: 300,
          child: Text(
            "Declaration: scale turnkey outsourcing after multidisciplinary leadership skills. Interactively engineer 24/7 paradigms vis-a-vis cross functional value. Conveniently streamline distinctive bandwidth through vertical imperatives. Progressively drive.",
            style: TextStyle(
                fontSize: 10,
                fontFamily: mainFont,
                color: colors['grey'],
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 50,
          width: 200,
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/payment_form");
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: Color.fromRGBO(0, 0, 0, .5),
                )),
            child: Text("Try Again",
                style: TextStyle(
                    color: colors['darkBlue-2'], fontFamily: mainFont)),
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
