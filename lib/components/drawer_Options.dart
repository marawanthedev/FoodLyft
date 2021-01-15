import 'package:flutter/material.dart';
import '../screens/Restaurantlist/Restaurant_List.dart';

class DrawerOptions extends StatelessWidget {
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
            ListBuild(
              title: "Profile",
              icon: Icons.person,
            ),
            ListBuild(
              title: "Address",
              icon: Icons.location_city,
            ),
            ListBuild(
              title: "Notifications",
              icon: Icons.notification_important,
            ),
            ListBuild(title: "History", icon: Icons.history),
          ],
        ),
      ),
    );
  }
}
