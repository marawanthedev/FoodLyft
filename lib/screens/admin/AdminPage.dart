import 'package:flutter/material.dart';
import 'package:foodlyft/screens/Restaurantlist/restruant_admin.dart';
import '../../screens/Restaurantlist/restaurants_grid.dart';
import '../../models/restaurant.dart';

import '../../components/drawer_Options.dart';
import '../Restaurantlist/Constants.dart';
import '../Restaurantlist/Constants.dart';
import 'new_restaurant.dart';
import 'new_restaurant.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 10.0,
                leading: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DrawerOptions())),
                  child: Text(
                    'Admin',
                    style: TextStyle(
                      color: appListColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                actions: [
                  InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => New_Restaurant())),
                      child: CircleAvatar(
                        backgroundColor: appListColor,
                        child: Icon(Icons.add),
                      )),
                ],
                bottom: TabBar(
                  tabs: [
                    Tab(
                      child: Text('Resturants',
                          style: TextStyle(color: Colors.black)),
                    ),
                    Tab(
                      child:
                          Text('Users', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
                title: Center(
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo_foodlyft.png'),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                ),
              ),
              body: TabBarView(children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      SafeArea(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          padding:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: appListColor.withOpacity(0.40),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(Icons.search),
                              hintText: "Search here",
                              hintStyle: TextStyle(color: appListColor),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 500,
                        child: AdminGrid(),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg'),
                      ),
                      title: Text(
                        'Arif Rahman',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Signika Negative',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg'),
                      ),
                      title: Text(
                        'Arif Rahman',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Signika Negative',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg'),
                      ),
                      title: Text(
                        'Sakib Al Hasan',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Signika Negative',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg'),
                      ),
                      title: Text(
                        'Arif Rahman',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Signika Negative',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg'),
                      ),
                      title: Text(
                        'Saad Chy',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Signika Negative',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg'),
                      ),
                      title: Text(
                        'Jeff Bezos',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Signika Negative',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg'),
                      ),
                      title: Text(
                        'Arif Rahman',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Signika Negative',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg'),
                      ),
                      title: Text(
                        'Jamshed Kader',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Signika Negative',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ]))),
    );
  }
}

Container scaffold() {
  return Container(
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: appListColor.withOpacity(0.40),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                  hintText: "Search here",
                  hintStyle: TextStyle(color: appListColor),
                ),
              ),
            ),
          ),
          Container(
            height: 500,
            child: AdminGrid(),
          )
        ],
      ),
    ),
  );
}

class Selection extends StatelessWidget {
  Widget build(BuildContext context) {}
}

class ListBuild extends StatelessWidget {
  String title;
  IconData icon;
  ListBuild({this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: ListTile(
          leading: Icon(
            icon,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 20, color: aTextColor),
          )),
    );
  }
}
