import 'package:flutter/material.dart';
import "../../../services/hexColor.dart";

class CustomTabBar extends StatelessWidget {
  final controller;
  CustomTabBar(this.controller);
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: HexColor("008000"),
      indicatorWeight: 1,
      unselectedLabelColor: Colors.red,
      indicator: BoxDecoration(
          border: Border(top: BorderSide(width: 2, color: HexColor("008000")))),
      controller: controller,
      tabs: <Widget>[
        Container(
          height: 70,
          child: Tab(
              child: Container(
            padding: EdgeInsets.only(top: 5),
            child: Image(
                image: AssetImage(
                  "assets/images/visa.png",
                ),
                width: 65,
                fit: BoxFit.fill),
          )),
        ),
        Container(
          height: 70,
          child: Tab(
              child: Container(
            padding: EdgeInsets.only(top: 5),
            child: Image(
                image: AssetImage(
                  "assets/images/mastercard.png",
                ),
                width: 65,
                fit: BoxFit.fill),
          )),
        ),
        Container(
          height: 70,
          child: Tab(
              child: Container(
            padding: EdgeInsets.only(top: 5),
            child: Image(
                image: AssetImage(
                  "assets/images/cash.png",
                ),
                width: 65,
                fit: BoxFit.fill),
          )),
        )
      ],
    );
  }
}
