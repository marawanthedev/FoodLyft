import 'package:flutter/material.dart';
import '../screens/Restaurantlist/Restaurant_List.dart';
import '../screens/Restaurantlist/Constants.dart';

class DrawerOptions extends StatefulWidget {
  @override
  _DrawerOptionsState createState() => _DrawerOptionsState();
}

class _DrawerOptionsState extends State<DrawerOptions> {
  void _navigate(target) {
    Navigator.pushNamed(context, "/$target");
  }

  @override
  Widget build(BuildContext context) {
    return
        // appBar: AppBar(
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back),
        //     onPressed: () => Navigator.pop(context),
        //   ),
        // ),
        // body: Center(),
        Drawer(
      child: SafeArea(
        child: Column(
          children: [
            // Builder(
            //   builder: (BuildContext context) {
            //     return IconButton(
            //       icon: const Icon(Icons.arrow_back),
            //       onPressed: () {
            //         Navigator.pop(context);
            //       },
            //     );
            //   },
            // ),
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
              // currentAccountPicture: new Container(
              //   margin: const EdgeInsets.only(bottom: 40.0),
              //   width: 10.0,
              //   height: 10.0,
              //   decoration: new BoxDecoration(
              //     shape: BoxShape.circle,
              //     image: new DecorationImage(
              //         fit: BoxFit.fill,
              //         image: AssetImage('/assets/images/user.png')),
              //   ),
              // ),
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
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              onTap: () => print('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
