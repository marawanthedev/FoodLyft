import 'package:foodlyft/screens/Profile_Screens/Profile_view.dart';
import 'package:foodlyft/screens/settings/settings_screen.dart';

import "./main_dependecies.dart";

Route<dynamic> createRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
    case "/adminPage":
      return MaterialPageRoute(builder: (context) => AdminPage());
    case "/edit_restaurant":
      return MaterialPageRoute(builder: (context) => EditRestaurant());

    case "/splash_screen":
      return MaterialPageRoute(builder: (context) => SplashScreen());

    case "/payment_form":
      return MaterialPageRoute(builder: (context) => PaymentForm());

    case "/payment_suceeded":
      return MaterialPageRoute(
          builder: (context) => PaymentSuceeded(settings.arguments));

    case "/payment_failed":
      return MaterialPageRoute(
          builder: (context) => PaymentFailed(settings.arguments));
    case "/login":
      return MaterialPageRoute(builder: (context) => LoginScreen([]));
    case "/Signup":
      return MaterialPageRoute(builder: (context) => SignUpScreen());
    case "/cart":
      return MaterialPageRoute(builder: (context) => CartScreen());
    case "/back_home_dialog":
      return MaterialPageRoute(builder: (context) => Back_Home_Dialog());
    case "/delete_dialog":
      return MaterialPageRoute(builder: (context) => Delete_Dialog());

    case "/homepage_screen":
      return MaterialPageRoute(builder: (context) => HomePage());
    case "/Food_Menu2":
      return MaterialPageRoute(builder: (context) => FoodMenu2());
    case "/Restaurant_List":
      return MaterialPageRoute(builder: (context) => RestaurantMenu());
    case "/food_details":
      return MaterialPageRoute(builder: (context) => FoodDetails());
    case "/profile":
      return MaterialPageRoute(builder: (context) => Profile());
    case "/settings_screen":
      return MaterialPageRoute(builder: (context) => Settings());
  }
}
