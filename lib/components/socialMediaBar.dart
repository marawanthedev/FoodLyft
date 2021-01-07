import 'package:flutter/material.dart';

class SocialMediaAppBar extends StatelessWidget {
  var onPressedFunctions = {};
  SocialMediaAppBar({this.onPressedFunctions});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            height: 70,
            width: 130,
            child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: FlatButton(
                    onPressed: onPressedFunctions['facebook'],
                    child: Image.asset('assets/images/facebook.png')))),
        Container(
            height: 70,
            width: 130,
            child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: FlatButton(
                    onPressed: onPressedFunctions['google'],
                    child: Image.asset('assets/images/google.png')))),
        Container(
            height: 70,
            width: 130,
            child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: FlatButton(
                    onPressed: onPressedFunctions['twitter'],
                    child: Image.asset('assets/images/twitter.png'))))
      ],
    );
  }
}
