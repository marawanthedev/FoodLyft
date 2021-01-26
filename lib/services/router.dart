import 'package:flutter/material.dart';
import "../screens/payment/payment_form.dart";
import '../screens/payment/paymentFailed/payment_failed.dart';
import '../screens/payment/paymentSuceeded/payment_succesfull.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
    case "payment_form":
      return MaterialPageRoute(builder: (context) => PaymentForm());
    case "/payment_failed":
      return MaterialPageRoute(
          builder: (context) => PaymentFailed(settings.arguments));
    case "/payment_suceeded":
      return MaterialPageRoute(
          builder: (context) => PaymentSuceeded(settings.arguments));
  }
}
