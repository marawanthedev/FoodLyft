import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final mainFont;
  final colors;
  MainText(this.mainFont, this.colors);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 450,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Interactively expedite revolutionary ROI after bricks-and-clicks alignments.",
            style: TextStyle(
                fontSize: 10,
                fontFamily: mainFont,
                color: colors['darkBlue'],
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
