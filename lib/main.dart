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
      defaultBrightness: Brightness.light,
      builder: (context, _brightness) {
        return MaterialApp(
            theme: ThemeData(
              brightness: _brightness,
/*
darkTheme: ThemeData(
      brightness: Brightness.dark,
      backgroundColor: Colors.blue[700],
      accentColor: Colors.yellow[700],
    ),
    lightTheme: ThemeData(
      brightness: Brightness.light,
      backgroundColor: Colors.blue[300],
      accentColor: Colors.yellow[300],
    ),
    builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
      title: 'Flutter Demo',
      theme: regularTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      ...
    ),
              */
            ),
            // theme: ThemeData(fontFamily: 'PlayfairDisplay'),
            debugShowCheckedModeBanner: false,
            initialRoute: "/Restaurant_List",
            // ignore: missing_return
            onGenerateRoute: router.createRoute);
      },
    ),
  ));
}
