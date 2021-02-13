import 'package:flutter/material.dart';
import 'package:foodlyft/services/general/hexColor.dart';

class CustomSnackBar extends StatelessWidget {
  final text;
  CustomSnackBar(this.text);
  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Text(
        "$text",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: HexColor("F2A22C"),
    );
  }
}
