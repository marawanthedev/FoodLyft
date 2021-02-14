import 'package:flutter/material.dart';
import '../../components/drawer_Options.dart';
import '../../models/user.dart';
import '../../app/main_dependecies.dart';

class AdminPage extends StatefulWidget {
  User user;
  AdminPage({this.user});

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Restaurants>(context);
    data.getREstaurantByCategory();
    data.getLists();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => RestaurantMenu())),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: aTextColor,
            ),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditRestaurant())),
          )
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
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: data.restList.length,
            itemBuilder: (_, i) {
              data.tempCategoryIndex = i;
              return AdminRestaurantItem(
                title: data.restList[data.tempCategoryIndex][i].title,
                image: data.restList[data.tempCategoryIndex][i].image,
              );
            }),
      ),
    );
  }
}
