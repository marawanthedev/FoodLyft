import 'package:flutter/material.dart';
import 'package:foodlyft/components/restaurant_list_category.dart';
import 'package:foodlyft/screens/FoodMenu/Food_Menu2.dart';
import './Constants.dart';

class RestaurantMenu extends StatefulWidget {
  @override
  _RestaurantMenuState createState() => _RestaurantMenuState();
}

class _RestaurantMenuState extends State<RestaurantMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: FlatButton(
          onPressed: () {},
          child: Icon(
            Icons.sort,
            color: appListColor,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: appListColor,
            child: Icon(Icons.face),
          ),
        ],
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
      body: Column(
        children: <Widget>[
          Container(
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "All",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Text(
                "Western",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              itemBuilder: (context, index) {
                return MaterialButton(
                   onPressed: () => Navigator.push(context,
                       MaterialPageRoute(builder: (context) => FoodMenu2())),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CategoryItem(
                          image: 'assets/images/fastfood.jpg',
                          title: "Fast Food",
                          isTouched: true,
                          press: () {},
                        ),
                        CategoryItem(
                          image: 'assets/images/western.jpg',
                          title: "Western Food",
                          press: () {},
                        ),
                        CategoryItem(
                          image: 'assets/images/arab.jpg',
                          title: "Arab Food",
                          press: () {},
                        ),
                        CategoryItem(
                          image: 'assets/images/italian.jpg',
                          title: "Italian Food",
                          press: () {},
                        ),
                        CategoryItem(
                          image: 'assets/images/drinks.jpg',
                          title: "Drinks",
                          press: () {},
                        ),
                        CategoryItem(
                          image: 'assets/images/breakfast.jpg',
                          title: "BreakFast",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}

class RestaurantsDetails {
  final String imagePath;
  final String title;

  RestaurantsDetails({
    @required this.imagePath,
    @required this.title,
  });
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
