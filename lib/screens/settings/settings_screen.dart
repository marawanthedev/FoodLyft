import 'dart:async';
import 'package:flutter/material.dart';
import '../Restaurantlist/Constants.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => new _SettingsState();
}

class _SettingsState extends State<Settings> {
  String selectedFont;
  List<String> fontFamily = <String>[
    'JosefinSans',
    'OpenSans',
    'PlayfairDisplay',
    'Poppins',
    'Roboto'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: selectedFont),
      home: Scaffold(
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

              //Dropdown Menu with Font List
              DropdownButton<String>(
                hint: Text("Select font"),
                value: selectedFont,
                onChanged: (String value) {
                  setState(() {
                    selectedFont = value;
                  });
                },
                items: fontFamily.map((String font) {
                  return DropdownMenuItem<String>(
                      value: font,
                      child: Row(
                        children: <Widget>[SizedBox(width: 10), Text(font)],
                      ));
                }).toList(),
              ),

              // RaisedButton(
              //   onPressed: () {
              //     setState(() {});
              //   },
              //   child: Text('Change Font'),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
