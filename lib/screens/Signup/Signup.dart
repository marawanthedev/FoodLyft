import 'package:flutter/material.dart';
import "../../services/hexColor.dart";
import 'dart:async';
import "../../components/formInput.dart";

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
  final _formKey = GlobalKey<FormState>();
  var userInfo = {"email": "", "password": "", "confirmPassword": ""};
  bool paymentSuceeded = true;
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final confrimPasswordCtrl = TextEditingController();

  // final cardNumberCtrl = TextEditingController();
  // final expirationDateCtrl = TextEditingController();
  // final cvvCtrl = TextEditingController();
}

class _SignUpScreenState extends State<SignUpScreen> {
  _navigateToLoginScreen() {
    Navigator.pushNamed(
      context,
      "/login",
    );
  }

  void populateSignUpInfo() {
    widget.userInfo['email'] = widget.emailCtrl.text;
    widget.userInfo['password'] = widget.passwordCtrl.text;
    widget.userInfo['confrimPassword'] = widget.confrimPasswordCtrl.text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Scaffold(
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
                  "Create Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                ),
              )),
          body: SingleChildScrollView(
            child: Container(
              width: 450,
              margin: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            height: 70,
                            width: 130,
                            child: ConstrainedBox(
                                constraints: BoxConstraints.expand(),
                                child: FlatButton(
                                    onPressed: () => {print("facebook")},
                                    child: Image.asset(
                                        'assets/images/facebook.png')))),
                        Container(
                            height: 70,
                            width: 130,
                            child: ConstrainedBox(
                                constraints: BoxConstraints.expand(),
                                child: FlatButton(
                                    onPressed: () => {print("google")},
                                    child: Image.asset(
                                        'assets/images/google.png')))),
                        Container(
                            height: 70,
                            width: 130,
                            child: ConstrainedBox(
                                constraints: BoxConstraints.expand(),
                                child: FlatButton(
                                    onPressed: () => {print("twitter")},
                                    child: Image.asset(
                                        'assets/images/twitter.png'))))
                      ],
                    ),
                  ),
                  Center(
                      child: Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Container(
                            height: 1.0,
                            width: 115.0,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          child: Text(
                            "or",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Container(
                            height: 1.0,
                            width: 115.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Form(
                        key: widget._formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            FormInput(
                              inputWidth: 350,
                              inputHeight: 65,
                              marginRight: 0,
                              hideInputValue: false,
                              controller: widget.emailCtrl,
                              prefixIcon: Image(
                                  height: 30,
                                  image: AssetImage(
                                    "assets/images/user.png",
                                  )),
                              placeHolder: "Email",
                              placeHolderStyle:
                                  TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                              contentPadding:
                                  EdgeInsets.only(top: 12.5, left: 5),
                            ),
                            FormInput(
                              inputWidth: 350,
                              inputHeight: 65,
                              marginRight: 0,
                              hideInputValue: true,
                              controller: widget.passwordCtrl,
                              prefixIcon: Image(
                                  height: 30,
                                  image: AssetImage(
                                    "assets/images/password.png",
                                  )),
                              placeHolder: "Password",
                              placeHolderStyle:
                                  TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter a your password';
                                }
                                return null;
                              },
                              contentPadding:
                                  EdgeInsets.only(top: 12.5, left: 5),
                            ),
                            FormInput(
                              inputWidth: 350,
                              inputHeight: 65,
                              marginRight: 0,
                              hideInputValue: true,
                              controller: widget.confrimPasswordCtrl,
                              prefixIcon: Image(
                                  height: 30,
                                  image: AssetImage(
                                    "assets/images/password.png",
                                  )),
                              placeHolder: "Confirm Password",
                              placeHolderStyle:
                                  TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please confirm your password';
                                }
                                return null;
                              },
                              contentPadding:
                                  EdgeInsets.only(top: 12.5, left: 5),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: SizedBox(
                                  width: 400,
                                  height: 50,
                                  child: RaisedButton(
                                    onPressed: () {
                                      // Validate returns true if the form is valid, otherwise false.
                                      if (widget._formKey.currentState
                                          .validate()) {
                                        // If the form is valid, display a snackbar. In the real world,
                                        // you'd often call a server or save the information in a database.

                                        Scaffold.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text(
                                            'Processing Signup Data',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          backgroundColor: HexColor("F2A22C"),
                                        ));
                                        this.setState(() {
                                          populateSignUpInfo();
                                        });
                                      }
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                          color: Color.fromRGBO(0, 0, 0, 0),
                                        )),
                                    child: Text("Signup",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 20)),
                                    color: HexColor("123C69"),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account?",
                            style: TextStyle(
                                color: HexColor("123C69"),
                                fontSize: 20,
                                fontFamily: 'Roboto'),
                          ),
                          RaisedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, otherwise false.
                              _navigateToLoginScreen();
                            },
                            elevation: 0,
                            hoverElevation: 0,
                            focusElevation: 0,
                            highlightElevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                                side: BorderSide(
                                  color: Colors.white,
                                )),
                            child: Text("Login",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20)),
                            color: Colors.white,
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
