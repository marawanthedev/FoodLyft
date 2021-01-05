import 'package:flutter/material.dart';
import "./screens/payment_failed.dart";
import "./screens/payment_succesfull.dart";

void main() {
  runApp(MaterialApp(
    initialRoute: "/payment_suceeded",
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case "/":
        case "/payment_failed":
          return MaterialPageRoute(builder: (context) => PaymentFailed());
        case "/payment_suceeded":
          return MaterialPageRoute(builder: (context) => PaymentSuceeded());
      }
    },
  ));
}
