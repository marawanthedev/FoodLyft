import 'package:flutter/material.dart';
import 'package:foodlyft/components/arab_Row_Build.dart';
import 'package:foodlyft/components/categoryItem.dart';
import 'package:foodlyft/components/italian_Row_Build.dart';
import 'package:foodlyft/components/western_Row_Build.dart';
import '../../models/restaurant.dart';
import './Constants.dart';
import '../../components/drawer_Options.dart';

class RestaurantMenu extends StatefulWidget {
  @override
  _RestaurantMenuState createState() => _RestaurantMenuState();
}

class _RestaurantMenuState extends State<RestaurantMenu> {
  final List<Restaurant> restaurants = [
    Restaurant(
      id: 'r1',
      title: "Macdonald's",
      image: 'assets/images/Mac.png',
      isTouched: true,
    ),
    Restaurant(
      id: 'r2',
      title: "Pizza Hut",
      image: 'assets/images/pizza.png',
      isTouched: true,
    ),
    Restaurant(
      id: 'r3',
      title: "KFC",
      image: 'assets/images/kfc.png',
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      isTouched: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOptions(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: FlatButton(
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => DrawerOptions())),
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
      body: SingleChildScrollView(
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
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10.0),
                itemCount: restaurants.length,
                itemBuilder: (ctx, i) => InkWell(
                  onTap: () {
                    print("Restaurant index is #$i");
                  },
                  child: CategoryItem(
                    restaurants[i].id,
                    restaurants[i].title,
                    restaurants[i].image,
                  ),
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 5,
                ),
              ),
            )
          ],
        ),
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
