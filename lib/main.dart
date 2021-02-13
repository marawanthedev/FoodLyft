import "./app/main_dependecies.dart";
import "./app/router.dart" as router;
import "./app/dependencies.dart" as dep;

void main() async {
  // String fontFamily = 'Roboto';
  WidgetsFlutterBinding.ensureInitialized();

  await dep.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (ctx) => Restaurants(),
      ),
      ChangeNotifierProvider(
        create: (ctx) => UserAuthProvider(),
      ),
      ChangeNotifierProvider(
        create: (ctx) => CartProvider(),
      ),
    ],
    child: MaterialApp(
<<<<<<< HEAD
      // theme: ThemeData(fontFamily: 'PlayfairDisplay'),
      debugShowCheckedModeBanner: false,
      initialRoute: "/Restaurant_List",
      // ignore: missing_return
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
          case "/cart":
            return MaterialPageRoute(builder: (context) => CartScreen());
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
          case "/food_details":
            return MaterialPageRoute(builder: (context) => FoodDetails());
          case "/profile":
            return MaterialPageRoute(builder: (context) => Profile());
          case "/settings_screen":
            return MaterialPageRoute(builder: (context) => Settings());
        }
      },
    ),
=======
        // theme: ThemeData(fontFamily: 'PlayfairDisplay'),
        debugShowCheckedModeBanner: false,
        initialRoute: "/Restaurant_List",
        // ignore: missing_return
        onGenerateRoute: router.createRoute),
>>>>>>> 300deb723c6719b0bf6e69301b775233599efac9
  ));
}
