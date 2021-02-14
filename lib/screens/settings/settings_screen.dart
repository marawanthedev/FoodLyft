import 'package:flutter/material.dart';
import 'package:foodlyft/services/DarkTheme/theme_changer.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _toggleTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.brightness_2, size: 30.0),
            title: Text('Dark Mode', style: TextStyle(fontSize: 18.0)),
            trailing: Switch(
              value: _toggleTheme,
              onChanged: (value) {
                ThemeBuilder.of(context).changeTheme();
                _toggleTheme = value;
              },
            ),
          ),
          Divider(
            thickness: 1.2,
          ),
        ],
      ),
    );
  }
}
