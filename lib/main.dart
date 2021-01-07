import 'package:flutter/material.dart';
import 'screens/payment/payment_failed.dart';
import 'screens/payment/payment_succesfull.dart';
import 'screens/payment/payment_form.dart';
import "./screens/Login/login.dart";
import "./screens/Signup/Signup.dart";
import "./services/router.dart" as router;

void main() {
  runApp(MaterialApp(
    initialRoute: "/signup",
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case "/":
        case "/payment_form":
          return MaterialPageRoute(builder: (context) => PaymentForm());

        case "/payment_suceeded":
          return MaterialPageRoute(
              builder: (context) => PaymentSuceeded(settings.arguments));

        case "/payment_failed":
          return MaterialPageRoute(
              builder: (context) => PaymentFailed(settings.arguments));
        case "/login":
          return MaterialPageRoute(builder: (context) => LoginScreen());
        case "/signup":
          return MaterialPageRoute(builder: (context) => SignUpScreen());
      }
    },
  ));
}
