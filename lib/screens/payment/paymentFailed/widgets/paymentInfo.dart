import 'package:flutter/material.dart';

class PaymentInfo extends StatelessWidget {
  final amount, colors, mainFont;
  PaymentInfo(this.amount, this.colors, this.mainFont);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70,
        width: 300,
        child: Column(
          children: [
            SizedBox(
                height: 25,
                child: Text(
                  "\$${amount} Amount ",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: mainFont,
                      color: colors['darkBlue-2'],
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold),
                )),
            Text(
              "was not deducted from your card",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: mainFont,
                  color: colors['darkBlue-2'],
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
