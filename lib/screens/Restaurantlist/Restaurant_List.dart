import 'package:flutter/material.dart';
import 'package:foodlyft/models/user.dart';
import 'package:foodlyft/providers/restaurants.provider.dart';
import 'package:provider/provider.dart';
import '../../components/category_Row_Builder.dart';
import '../admin/AdminPage.dart';
import './Constants.dart';
import '../../components/drawer_Options.dart';

class RestaurantMenu extends StatefulWidget {
  User user;
  RestaurantMenu({this.user});
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
      drawer: DrawerOptions(user: widget.user),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: FlatButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DrawerOptions(user: widget.user))),
          child: Icon(
            Icons.sort,
            color: appListColor,
          ),
        ),
        actions: widget.user.name != null
            ? widget.user.name.contains("admin")
                ? <Widget>[
                    PopupMenuButton(
                      onSelected: (selectedValue) {},
                      icon: Icon(Icons.more_vert, color: appListColor),
                      itemBuilder: (_) => [
                        PopupMenuItem(
                          child: InkWell(
                            child: (Text('Manage Resturant')),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AdminPage()));
                            },
                          ),
                          value: 0,
                        )
                      ],
                    ),
                  ]
                : null
            : null,
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
              child: ListView.builder(
                scrollDirection: Axis.vertical,

                itemBuilder: (context, index) {
                  data.tempCategoryIndex = index;
                  return CategoryRowBuilder();
                },
                itemCount: data.restList
                    .length, //To render the number of rows in the ListView According to the number of Categories Available
              ),
            ),
          ],
        ),
      ),
    );
  }
}
