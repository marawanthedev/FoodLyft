import 'package:flutter/material.dart';
import 'package:foodlyft/providers/UserAuth.provider.dart';
import 'package:foodlyft/screens/Restaurantlist/Constants.dart';
import 'package:foodlyft/screens/settings/settings_screen.dart';
import 'package:provider/provider.dart';
import '../screens/Restaurantlist/Restaurant_List.dart';
import '../screens/Restaurantlist/Constants.dart';

class DrawerOptions extends StatefulWidget {
  @override
  _DrawerOptionsState createState() => _DrawerOptionsState();

  var userAuthProvider;
}

class _DrawerOptionsState extends State<DrawerOptions> {
  void _navigate(target) {
    Navigator.pushNamed(context, "/$target");
  }

  @override
  Widget build(BuildContext context) {
    widget.userAuthProvider = Provider.of<UserAuthProvider>(context);

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
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: appMainColor,
              ),
              

              accountName: Text("${widget.userAuthProvider.isUserInAuth()?widget.userAuthProvider.getUserInAuth().name:''}"),
              accountEmail: Text("${widget.userAuthProvider.isUserInAuth()?widget.userAuthProvider.getUserInAuth().email:''}"),
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: () => _navigate("profile"),
            ),
            ListTile(
              title: Text("Address"),
              leading: Icon(Icons.location_city),
              onTap: () => print("Address"),
            ),
            ListTile(
              title: Text("Notifications"),
              leading: Icon(Icons.notification_important),
              onTap: () => print('not'),
            ),
            ListTile(
              title: Text("History"),
              leading: Icon(Icons.history),
              onTap: () => print('History'),
            ),
            ListTile(
              title: Text("History"),
              leading: Icon(Icons.history),
              onTap: () => print('History'),
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
