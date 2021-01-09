import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodlyft/services/hexColor.dart';
import 'package:image_picker/image_picker.dart';

import 'dialog/back_home_dialog.dart';

class New_Restaurant extends StatefulWidget {
  @override
  _New_RestaurantState createState() => _New_RestaurantState();
}

class _New_RestaurantState extends State<New_Restaurant> {
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickerImage = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickerImage.path);
    });
  }

  String _name;
  String _email;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Restaurant Name',
          fillColor: Colors.grey.withOpacity(0.2),
          filled: true,
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(8.0),
            ),
            borderSide: new BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }

          return null;
        },
        onSaved: (String value) {
          _name = value;
        },
      ),
    );
  }

  Widget _buildEmail() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Email/Username',
          fillColor: Colors.grey.withOpacity(0.2),
          filled: true,
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(8.0),
            ),
            borderSide: new BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
        ),
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
      ),
    );
  }

  Widget _buildPassword() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Password',
          fillColor: Colors.grey.withOpacity(0.2),
          filled: true,
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(8.0),
            ),
            borderSide: new BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
        ),
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
      ),
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
              "New Restaurant",
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
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      child: _image == null
                          ? Text("No Image Selected")
                          : Image.file(_image),
                      width: 420.0,
                    ),
                    Positioned(
                      right: 0.0,
                      bottom: 0.0,
                      child: FloatingActionButton(
                        onPressed: getImage,
                        child: Icon(Icons.camera_alt),
                      ),
                    ),
                  ],
                ),
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
                    SizedBox(height: 30),
                    Center(
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          SizedBox(
                            width: 135,
                            height: 52,
                            child: RaisedButton(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: HexColor('F2A22C'))),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    color: HexColor('F2A22C'), fontSize: 16),
                              ),
                              onPressed: () {
                                if (!_formKey.currentState.validate()) {
                                  return;
                                }

                                _formKey.currentState.save();

                                print(_name);
                                print(_email);

                                //Send to API
                              },
                            ),
                          ),
                          SizedBox(width: 10),
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
