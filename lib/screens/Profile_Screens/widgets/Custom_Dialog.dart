import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodlyft/providers/UserAuth.provider.dart';
import 'package:provider/provider.dart';

class Constants {
  Constants._();
  static const double padding = 20;
  static const double avatarRadius = 45;
}

class CustomDialogBoxState extends StatefulWidget {
  @override
  _CustomDialogBoxStateState createState() => _CustomDialogBoxStateState();
}

class _CustomDialogBoxStateState extends State<CustomDialogBoxState>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    final userAuthProvider = Provider.of<UserAuthProvider>(context);
    final userInAuth = userAuthProvider.getUserInAuth();
    return Stack(children: <Widget>[
      Container(
        padding: EdgeInsets.only(
            left: Constants.padding,
            top: Constants.avatarRadius + Constants.padding,
            right: Constants.padding,
            bottom: Constants.padding),
        margin: EdgeInsets.only(top: Constants.avatarRadius),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(Constants.padding),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Color.fromRGBO(255, 167, 39, 1),
                ),
                hintText: 'What do people call you?',
                labelText: '${userInAuth != null ?userInAuth.name:""}',
                focusColor: Color.fromRGBO(255, 167, 39, 1),
              ),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color.fromRGBO(255, 167, 39, 1),
                ),
                hintText: 'What is your email address?',
                labelText: '${userInAuth != null ?userInAuth.email:""}',
              ),
            ),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.phone_android_outlined,
                  color: Color.fromRGBO(255, 167, 39, 1),
                ),
                hintText: 'What is your phone number?',
                labelText: '${userInAuth != null ?userInAuth.phoneNumber:""}',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            color: Color.fromRGBO(255, 167, 39, 1),
                            width: 3,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(255, 167, 39, 1)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // print(nameController.text);
                        if (nameController.text.isEmpty) {
                          nameController.text = userInAuth.name;
                        }
                        if (emailController.text.isEmpty) {
                          emailController.text = userInAuth.email;
                        }
                        if (phoneController.text.isEmpty) {
                          phoneController.text = userInAuth.phoneNumber;
                        }
                        userAuthProvider.updateAttributes(nameController.text,
                            emailController.text, phoneController.text);
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.all(3),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 167, 39, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Text(
                            'Save',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
