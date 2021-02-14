import 'package:flutter/material.dart';
import "./tabBar.dart";

class CustomAppBar extends StatelessWidget {
  final controller;
  CustomAppBar(this.controller);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 150,
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
          //color: Colors.black, //change your color here
          ),
      title: Text("Payment", style: TextStyle(color: Colors.black)),
      bottom: PreferredSize(
        child: CustomTabBar(controller),
        preferredSize: Size.fromHeight(200),
      ),
    );
  }
}
