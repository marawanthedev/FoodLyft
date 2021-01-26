import "./app/dependencies.dart";
import "./app/router.dart" as router;

void main() {
  String fontFamily = 'Roboto';
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
        initialRoute: "/",
        // ignore: missing_return
        onGenerateRoute: router.createRoute),
  ));
}
