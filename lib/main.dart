import 'package:flutter/material.dart';
import 'screens/payment/payment_failed.dart';
import 'screens/payment/payment_succesfull.dart';
import 'screens/payment/payment_form.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/payment_form",
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case "/":
        case "/payment_failed":
          return MaterialPageRoute(builder: (context) => PaymentFailed());
        case "/payment_suceeded":
          return MaterialPageRoute(builder: (context) => PaymentSuceeded());
        case "/payment_form":
          return MaterialPageRoute(builder: (context) => PaymentForm());
      }
    },
  ));
}
