

import 'package:flutter/material.dart';
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
          child: RichText(
            text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(text: "Food", style: TextStyle(color: appListColor)),
                TextSpan(text: "Lyft", style: TextStyle(color: appMainColor))
              ],
            ),
          ),
        ),
      ),
      body: ListView(
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
          SingleChildScrollView(
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
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Middle Eastern",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CategoryItem(
                  image: 'assets/images/bilad.png',
                  title: "Bilad Rafidun",
                  isTouched: true,
                  press: () {},
                ),
                CategoryItem(
                  image: 'assets/images/Hayfa.png',
                  title: "Hayfa",
                  press: () {},
                ),
                CategoryItem(
                  image: 'assets/images/hadrmawt.png',
                  title: "Hadarmawt",
                  press: () {},
                ),
                CategoryItem(
                  image: 'assets/images/halab.jpg',
                  title: "Shawerma Halab",
                  press: () {},
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Fast Food",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CategoryItem(
                  image: 'assets/images/Mac.png',
                  title: "Macdonald's",
                  isTouched: true,
                  press: () {},
                ),
                CategoryItem(
                  image: 'assets/images/pizza.png',
                  title: "Pizza Hut",
                  press: () {},
                ),
                CategoryItem(
                  image: 'assets/images/carls.png',
                  title: "Carl's",
                  press: () {},
                ),
                CategoryItem(
                  image: 'assets/images/kfc.png',
                  title: "KFC",
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListBuild extends StatelessWidget {
  String title;
  IconData icon;
  ListBuild({this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){},
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

class CategoryItem extends StatelessWidget {
  final String title;
  String image;
  final bool isTouched;
  final Function press;
  CategoryItem({this.title, this.isTouched = false, this.press, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: isTouched
                  ? TextStyle(
                      fontSize: 20,
                      color: aTextColor,
                      fontWeight: FontWeight.bold)
                  : TextStyle(fontSize: 14),
            ),
            if (isTouched)
              Container(
                margin: EdgeInsets.symmetric(vertical: 2),
                height: 3,
                width: 20,
                decoration: BoxDecoration(color: appMainColor),
              )
          ],
        ),
      ),
    );
  }
}
