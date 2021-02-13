import 'package:flutter/material.dart';

class ThemeBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, Brightness brightness) builder;
  final Brightness defaultBrightness;
  ThemeBuilder({this.builder, this.defaultBrightness});

  @override
  _ThemeBuilderState createState() => _ThemeBuilderState();

//To access theme data
  static _ThemeBuilderState of(BuildContext context) {
    return context.findAncestorStateOfType<_ThemeBuilderState>();
  }
}

class _ThemeBuilderState extends State<ThemeBuilder> {
  Brightness _brightness;

  @override
  void initState() {
    super.initState();
    _brightness = widget.defaultBrightness; //light theme by default

    if (mounted) {
      setState(() {});
    }
  }

  void changeTheme() {
    setState(() {
      _brightness =
          _brightness == Brightness.dark ? Brightness.light : Brightness.dark;
    });
  }

  Brightness getCurrentTheme() {
    return _brightness;
  }

  //initialize the brightness: Without it the app will be completely dark
  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _brightness);
  }
}
