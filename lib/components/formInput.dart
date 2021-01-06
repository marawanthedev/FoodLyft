import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  double inputHeight, inputWidth;
  var controller;
  Function validator;
  var placeHolder = '';
  double marginRight = 0;
  var margin = {};
  bool hideInputValue = false;
  FormInput(
      {this.controller,
      this.validator,
      this.placeHolder,
      this.inputHeight,
      this.inputWidth,
      this.marginRight,
      this.hideInputValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: inputWidth,
      height: inputHeight,
      margin: EdgeInsets.only(right: marginRight),
      child: TextFormField(
        obscureText: hideInputValue,
        controller: controller,
        decoration: new InputDecoration(
          hintText: placeHolder,
        ),
        validator: validator,
      ),
    );
  }
}
