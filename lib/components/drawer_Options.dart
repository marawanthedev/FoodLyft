import 'package:flutter/material.dart';
import 'package:foodlyft/models/user.dart';
import 'package:foodlyft/screens/Restaurantlist/Constants.dart';
import 'package:foodlyft/screens/settings/settings_screen.dart';
import "../services/UserAuth/userAuth_service_firebase.dart";

class DrawerOptions extends StatefulWidget {
  DrawerOptions();
  @override
  _DrawerOptionsState createState() => _DrawerOptionsState();
}

class _DrawerOptionsState extends State<DrawerOptions> {
  void _navigate(target) {
    Navigator.pushNamed(context, "/$target");
  }

  @override
  Widget build(BuildContext context) {
    User user = UserAuthServiceFirebase().getUserInAuth();
    print(user);
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              color: appMainColor,
              child: Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding:EdgeInsets.only(left:20,top:20),
                    child:Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),)
                ),
              ),
            ),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: appMainColor,
              ),
          
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: () => _navigate("profile"),
            ),
           
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              ),
              // onTap: () => _navigate("settings_screen"),
            ),
          ],
        ),
      ),
    );
  }
}
