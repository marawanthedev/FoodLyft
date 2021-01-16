import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/FoodMenu/Food_Menu2.dart';
import 'screens/payment/payment_failed.dart';
import 'screens/payment/payment_succesfull.dart';
import 'screens/payment/payment_form.dart';
import "./screens/Login/login.dart";
import "./screens/Signup/Signup.dart";
// import "./services/router.dart" as router;
import 'screens/admin/new_restaurant.dart';
import 'screens/admin/edit-restaurant.dart';
import 'screens/admin/dialog/back_home_dialog.dart';
import 'screens/admin/dialog/delete_dialog.dart';
import './screens/HomePage/homepage_screen.dart';
import './screens/splash/splash_screen.dart';
import './screens/Restaurantlist/Restaurant_List.dart';

void main() {
  runApp(
    MaterialApp(
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
          case "/Signup":
            return MaterialPageRoute(builder: (context) => SignUpScreen());
          case "/new_restaurant":
            return MaterialPageRoute(builder: (context) => New_Restaurant());
          case "/edit_restaurant":
            return MaterialPageRoute(builder: (context) => Edit_restaurant());
          case "/back_home_dialog":
            return MaterialPageRoute(builder: (context) => Back_Home_Dialog());
          case "/delete_dialog":
            return MaterialPageRoute(builder: (context) => Delete_Dialog());
          case "/splash_screen":
            return MaterialPageRoute(builder: (context) => SplashScreen());
          case "/homepage_screen":
            return MaterialPageRoute(builder: (context) => HomePage());
          case "/Food_Menu2":
            return MaterialPageRoute(builder: (context) => FoodMenu2());
          case "/Restaurant_List":
            return MaterialPageRoute(builder: (context) => RestaurantMenu());
        }
      },
    ));
}
