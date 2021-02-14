import './services/DarkTheme/theme_changer.dart' as theme;
import "./app/main_dependecies.dart";
import "./app/router.dart" as router;
import "./app/dependencies.dart" as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dep.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (ctx) => Restaurants(),
      ),
      
      ChangeNotifierProvider(
        create: (ctx) => CartProvider(),
      ),
    ],
    child: theme.ThemeBuilder(
      defaultBrightness: Brightness.dark,
      builder: (context, _brightness) {
        return MaterialApp(
            theme: ThemeData(
              brightness: _brightness,
            ),
            // theme: ThemeData(fontFamily: 'PlayfairDisplay'),
            debugShowCheckedModeBanner: false,
            initialRoute: "/splash_screen",
            // ignore: missing_return
            onGenerateRoute: router.createRoute);
      },
    ),
  ));
}
