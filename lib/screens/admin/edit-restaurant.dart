import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodlyft/services/hexColor.dart';
import 'package:foodlyft/services/hexColor.dart';
import 'package:image_picker/image_picker.dart';

import 'dialog/back_home_dialog.dart';
import 'dialog/delete_dialog.dart';

class Edit_restaurant extends StatefulWidget {
  @override
  _Edit_restaurantState createState() => _Edit_restaurantState();
}

class _Edit_restaurantState extends State<Edit_restaurant> {
  String _name;
  String _email;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: ''),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: ''),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: ''),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          elevation: 0,
          title: Container(
            margin: EdgeInsets.only(left: 50),
            child: Text(
              "Edit Restaurant",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
        // body: Center(
        //   child: _image == null ? Text("Image not Loaded") : Image.file(_image),
        // ),
        body: Column(
          children: [
            Container(
              height: 200.0,
              width: 500.0,
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              child: Container(
                height: 60.0,
                width: 60.0,
                margin: EdgeInsets.fromLTRB(330, 140, 0, 0),
              ),
            ),
            Container(
              margin: EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildName(),
                    _buildEmail(),
                    _buildPassword(),
                    SizedBox(height: 50),
                    Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 52,
                            child: RaisedButton(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red)),
                              child: Text(
                                'Delete Restaurant',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 16),
                              ),
                              onPressed: () {
                                if (!_formKey.currentState.validate()) {
                                  return;
                                }

                                _formKey.currentState.save();
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => Delete_Dialog()),
                                );
                                print(_name);
                                print(_email);

                                //Send to API
                              },
                            ),
                          ),
                          SizedBox(width: 15),
                          SizedBox(
                            width: 135,
                            height: 52,
                            child: RaisedButton(
                              color: HexColor('F2A22C'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              child: Text(
                                'Save Changes',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              onPressed: () {
                                if (!_formKey.currentState.validate()) {
                                  return;
                                }

                                _formKey.currentState.save();
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => Back_Home_Dialog()),
                                );
                                print(_name);
                                print(_email);

                                //Send to API
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
