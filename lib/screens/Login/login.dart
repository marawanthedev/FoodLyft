import 'package:flutter/material.dart';
import "../../services/hexColor.dart";
import "../../components/formInput.dart";
import "../../components/socialMediaBar.dart";

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
  final _formKey = GlobalKey<FormState>();
  var userInfo = {
    "email": "",
    "password": "",
  };
  bool paymentSuceeded = true;
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  // final cardNumberCtrl = TextEditingController();
  // final expirationDateCtrl = TextEditingController();
  // final cvvCtrl = TextEditingController();
}

class _LoginScreenState extends State<LoginScreen> {
  void populateLoginInfo() {
    widget.userInfo['email'] = widget.emailCtrl.text;
    widget.userInfo['password'] = widget.passwordCtrl.text;

    // Navigator.pushNamed(context,
    //     widget.paymentSuceeded ? "/payment_suceeded" : "payment_failed",
    //     arguments: widget.paymentInfo);
    // var timer = Timer(Duration(seconds: 2), () => _navigate());
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
                margin: EdgeInsets.only(left: 100),
                child: Text(
                  "Login ",
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
                      child: SocialMediaAppBar(
                    onPressedFunctions: {
                      'google': () => {print("Google")},
                      'facebook': () => {print("Facebook")},
                      'twitter': () => {print("twitter")},
                    },
                  )
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
                              inputHeight: 65,
                              inputWidth: 350,
                              controller: widget.emailCtrl,
                              hideInputValue: false,
                              prefixIcon: Image(
                                  height: 30,
                                  image: AssetImage(
                                    "assets/images/user.png",
                                  )),
                              placeHolder: 'Email',
                              placeHolderStyle:
                                  TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                              contentPadding:
                                  EdgeInsets.only(top: 12.5, left: 5),
                              marginRight: 0,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                            FormInput(
                              inputHeight: 65,
                              inputWidth: 350,
                              controller: widget.passwordCtrl,
                              hideInputValue: true,
                              prefixIcon: Image(
                                  height: 30,
                                  image: AssetImage(
                                    "assets/images/password.png",
                                  )),
                              placeHolder: 'Password',
                              placeHolderStyle:
                                  TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                              contentPadding:
                                  EdgeInsets.only(top: 12.5, left: 5),
                              marginRight: 0,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
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
                                            'Processing Login Data',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          backgroundColor: HexColor("F2A22C"),
                                        ));
                                        this.setState(() {
                                          populateLoginInfo();
                                        });
                                      }
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                          color: Color.fromRGBO(0, 0, 0, 0),
                                        )),
                                    child: Text("Login",
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
                            "First Time here?",
                            style: TextStyle(
                                color: HexColor("123C69"),
                                fontSize: 20,
                                fontFamily: 'Roboto'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Sign up.",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Roboto'),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Forgot password?",
                            style: TextStyle(
                                color: HexColor("123C69"),
                                fontSize: 20,
                                fontFamily: 'Roboto'),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
