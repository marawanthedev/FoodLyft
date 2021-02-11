import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodlyft/components/categoryItemadmin.dart';
import 'package:foodlyft/providers/restaurants.dart';
import 'package:foodlyft/screens/admin/services/database.dart';
import '../../components/categoryItem.dart';
import 'package:provider/provider.dart';

class AdminGrid extends StatefulWidget {
  @override
  _AdminGridState createState() => _AdminGridState();
}

class _AdminGridState extends State<AdminGrid> {
  Database database = Database();

  Stream restaurentStream;

  @override
  void initState() {
    getAdminData();
    super.initState();
  }

  getAdminData() async {
    database.getAdminData().then((value) {
      setState(() {
        restaurentStream = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final restaurantsData = Provider.of<Restaurants>(context);
    //final restaurantss = restaurantsData.items;
    return StreamBuilder(
        stream: restaurentStream,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? GridView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(10.0),
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (ctx, i) => CategoryItem2(
                    title: snapshot.data.docs[i].data()["restaurant_name"],
                    image: snapshot.data.docs[i].data()["img"],
                    email: snapshot.data.docs[i].data()["email"],
                    password: snapshot.data.docs[i].data()["password"],
                    dID: snapshot.data.docs[i].reference,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 5,
                  ),
                )
              : Center(child: Text('Loading..'));
        });
  }
}
