import 'package:flutter/material.dart';
import 'package:foodlyft/providers/restaurants.dart';
import 'package:provider/provider.dart';
import '../../components/category_Row_Builder.dart';
import './Constants.dart';
import '../../components/drawer_Options.dart';

class RestaurantMenu extends StatefulWidget {
  @override
  _RestaurantMenuState createState() => _RestaurantMenuState();
}

class _RestaurantMenuState extends State<RestaurantMenu> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Restaurants>(context);
    data.getREstaurantByCategory();
    data.getLists();

    double height = MediaQuery.of(context).size.height;

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
              height: height,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                addRepaintBoundaries: true,
                itemBuilder: (context, index) {
                  data.tempCategoryIndex = index;
                  return CategoryRowBuilder(
                      //categoryTitle: "Category Title",

                      );
                },
                itemCount: data.restList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
