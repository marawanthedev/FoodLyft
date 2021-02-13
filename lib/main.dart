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
        // theme: ThemeData(fontFamily: 'PlayfairDisplay'),
        debugShowCheckedModeBanner: false,
        initialRoute: "/splash_screen",
        // ignore: missing_return
        onGenerateRoute: router.createRoute),
  ));
}
