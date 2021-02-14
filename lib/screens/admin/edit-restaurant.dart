import 'dart:io';
import 'package:path/path.dart' as Path;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:foodlyft/services/AdminServices.dart';

import 'package:image_picker/image_picker.dart';

import '../../services/general/hexColor.dart';
import 'dialog/back_home_dialog.dart';
import 'dialog/delete_dialog.dart';

class Edit_restaurant extends StatefulWidget {
  final String title;
  final String image;
  final String email;
  final String password;
  final DocumentReference dId;
  const Edit_restaurant(
      {Key key, this.title, this.image, this.email, this.password, this.dId})
      : super(key: key);
  @override
  _Edit_restaurantState createState() => _Edit_restaurantState();
}

class _Edit_restaurantState extends State<Edit_restaurant> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Database database = Database();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  File imagePicked;
  final picker = ImagePicker();
  Future getImage() async {
    final pickerImage = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      imagePicked = File(pickerImage.path);
    });
  }

  updateRestaurent() async {
    Map<String, String> data = {
      "restaurant_name": name.text,
      "email": email.text,
      "password": password.text
    };
    database.updateRestaurentInfo(data);
  }

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(hintText: "Name: " + widget.title),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      controller: name,
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(hintText: "Email: " + widget.email),
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
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(hintText: "Password: " + widget.password),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },
      controller: password,
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
              child: Stack(
                children: [
                  Positioned(
                    right: 0.0,
                    bottom: 0.0,
                    child: FloatingActionButton(
                      onPressed: () {
                        getImage();
                      },
                      child: Icon(Icons.camera_alt),
                    ),
                  ),
                ],
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
                              onPressed: () async {
                                print(widget.dId);

                                await Firestore.instance
                                    .runTransaction((Transaction mt) async {
                                  mt.delete(widget.dId);
                                });

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => Delete_Dialog()),
                                );
                                // print(_name);
                                // print(_email);

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
                              onPressed: () async {
                                if (!_formKey.currentState.validate()) {}
                                await database
                                    .uploadResturantImage(imagePicked);

                                updateRestaurent();

                                await Firestore.instance
                                    .runTransaction((Transaction mt) async {
                                  mt.delete(widget.dId);
                                });
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
