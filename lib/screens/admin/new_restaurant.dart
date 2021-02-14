import 'dart:ffi';
import 'dart:io';
import 'package:foodlyft/screens/admin/AdminPage.dart';
import 'package:path/path.dart' as Path;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:foodlyft/services/AdminServices.dart';

import 'package:image_picker/image_picker.dart';

import '../../services/firebase/firebase_service.dart';
import '../../services/firebase/firebase_service.dart';
import '../../services/firebase/firebase_service.dart';
import '../../services/firebase/firebase_service.dart';
import '../../services/general/hexColor.dart';
import 'dialog/back_home_dialog.dart';

class New_Restaurant extends StatefulWidget {
  @override
  _New_RestaurantState createState() => _New_RestaurantState();
}

class _New_RestaurantState extends State<New_Restaurant> {
  Database database = Database();

  //final formKey = GlobalKey<FormState>();

  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickerImage = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickerImage.path);
    });
  }

  addNewRestaurent() async {
    Map<String, String> data = {
      "restaurant_name": name.text,
      "email": email.text,
      "password": password.text
    };
    database.uploadRestaurentInfo(data);
  }

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

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
        controller: name,
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
        controller: email,
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
        controller: password,
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
                          : Center(child: Image.file(_image)),
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AdminPage()));
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
                              onPressed: () async {
                                if (!_formKey.currentState.validate()) {}
                                await database.uploadResturantImage(_image);

                                addNewRestaurent();

                                _formKey.currentState.save();
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => Back_Home_Dialog()),
                                );
                                // print(_name);
                                // print(_email);

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
