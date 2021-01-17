import 'package:flutter/material.dart';
import '../screens/Restaurantlist/Restaurant_List.dart';

class DrawerOptions extends StatefulWidget {
  @override
  _DrawerOptionsState createState() => _DrawerOptionsState();
}

class _DrawerOptionsState extends State<DrawerOptions> {

   void _navigate(target){

    Navigator.pushNamed(context, "/$target");
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("User Name"),
              accountEmail: Text("User Email"),
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
          ],
        ),
      ),
    );
  }
}

