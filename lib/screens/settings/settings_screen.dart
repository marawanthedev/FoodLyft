import 'dart:async';
import 'package:flutter/material.dart';
import '../Restaurantlist/Constants.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);
  @override
  _SettingsState createState() => new _SettingsState();

  //To dynamically change the fonts
  static void setAppFontFamily(
      BuildContext context, String _selectedFontFamily) {
    _SettingsState state = context.findAncestorStateOfType();
  }
}

class _SettingsState extends State<Settings> {
  // List<String> _fontFamily = [
  //   'JosefinSans',
  //   'OpenSans',
  //   'PlayfairDisplay',
  //   'Poppins',
  //   'Roboto'
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appMainColor,
        title: Text('Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Font',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text('Please select the app font from the list'),
          ],
        ),
      ),
    );
  }
}
