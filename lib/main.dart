import 'package:flutter/material.dart';
import 'package:foodlyft/screens/FoodMenu/Food_Menu.dart';
import 'screens/payment/payment_failed.dart';
import 'screens/payment/payment_succesfull.dart';
import 'screens/payment/payment_form.dart';
import "./screens/Login/login.dart";
import "./screens/Signup/Signup.dart";
import './screens/Restaurantlist/Restaurant_List.dart';
import "./screens/cart/cart.dart";
import './screens/FoodMenu/Food_Menu.dart';
import './screens/FoodMenu/Food_Menu2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/Food_Menu2",
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
          return MaterialPageRoute(
              builder: (context) => LoginScreen(settings.arguments));
        case "/signup":
          return MaterialPageRoute(builder: (context) => SignUpScreen());
        case "/Restaurant_List":
          return MaterialPageRoute(builder: (context) => RestaurantMenu());
        case "/cart":
          return MaterialPageRoute(builder: (context) => CartScreen());
        case "/Food_Menu":
          return MaterialPageRoute(builder: (context) => FoodMenu());
        case "/Food_Menu2":
          return MaterialPageRoute(builder: (context) => FoodMenu2());
      }
    },
  ));
}
