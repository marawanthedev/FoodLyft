import 'package:flutter/material.dart';
import 'package:foodlyft/screens/Login/login.dart';
import 'package:foodlyft/screens/Signup/Signup.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/start_background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
                color: Colors.white,
              ),
              height: 400.0,
              width: 370,
              padding: EdgeInsets.only(bottom: 10.0),
            ),
          ),
          Positioned(
            top: 250,
            left: 50,
            child: Container(
                height: 80.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    'assets/images/knife_spoon_fork.png',
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          Positioned(
            top: 350,
            left: 50,
            child: Text(
              "Welcome",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber[700],
                fontSize: 40,
              ),
            ),
          ),
          Positioned(
            top: 405,
            left: 50,
            child: Text(
              "Lyfting food towards",
              style: TextStyle(
                  color: Colors.amber[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 3),
            ),
          ),
          Positioned(
            top: 435,
            left: 50,
            child: Text(
              "your mouth",
              style: TextStyle(
                  color: Colors.amber[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 3),
            ),
          ),
          Positioned(
              top: 500,
              left: 50,
              child: SizedBox(
                height: 60,
                width: 310,
                child: RaisedButton(
                  // onPressed: () => Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => LoginScreen())),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text("Login",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  color: Colors.amber[700],
                ),
              )),
          Positioned(
              top: 570,
              left: 50,
              child: SizedBox(
                height: 60,
                width: 310,
                child: RaisedButton(
                  // onPressed: () => Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => SignUpScreen())),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: Colors.amber[700],
                      )),
                  child: Text("Register",
                      style: TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.bold)),
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
