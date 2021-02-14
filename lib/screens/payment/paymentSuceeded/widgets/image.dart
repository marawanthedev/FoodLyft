import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Image(
        image: AssetImage("assets/images/sucess.png"),
      ),
    );
  }
}
