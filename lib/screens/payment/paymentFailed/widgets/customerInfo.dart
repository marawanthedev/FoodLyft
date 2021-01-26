import 'package:flutter/material.dart';

class CustomerInfo extends StatelessWidget {
  final cardHolderName, mainFont, colors;
  CustomerInfo(this.cardHolderName, this.mainFont, this.colors);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 225,
      child: Text(
        "Payment has failed ${cardHolderName}",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.5,
          fontFamily: mainFont,
          fontWeight: FontWeight.normal,
          color: colors['black'],
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
