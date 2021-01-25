import 'package:flutter/material.dart';

// Guide to utilizing this component
// width and height should be passed in double format
// ex instead of passing width:400, pass width:400.0
// rest is working without any confusion

class customButton extends StatelessWidget {
  var formKey, buttonText, backgroundColor, onPressed, setState, width, height;

  customButton(
      {this.backgroundColor,
      this.buttonText,
      this.formKey,
      this.onPressed,
      this.setState,
      this.width,
      this.height});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RaisedButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Color.fromRGBO(0, 0, 0, 0),
            )),
        child: Text(buttonText,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal,
                fontSize: 20)),
        color: backgroundColor,
      ),
    );
  }
}
