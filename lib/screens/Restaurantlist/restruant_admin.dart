import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodlyft/app/main_dependecies.dart';
import 'package:foodlyft/components/categoryItemadmin.dart';
import 'package:foodlyft/providers/restaurants.dart';
import 'package:foodlyft/services/AdminServices.dart';
import '../../components/categoryItem.dart';
import 'package:provider/provider.dart';

import '../../services/AdminServices.dart';
import '../../services/firebase/firebase_service.dart';
import '../../services/firebase/firebase_service.dart';

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
    List list_of_restaureants = await Firestore.instance
        .collection("Resturants")
        .getDocuments()
        .then((val) => val.documents);
    print(list_of_restaureants);
    return list_of_restaureants;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getAdminData(),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          print(snapshot.data.length);
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: snapshot.data.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (_, index) {
              print(snapshot.data[index].data);
              return new ListTile(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Edit_restaurant(
                                title: snapshot
                                    .data[index].data['restaurant_name'],
                                password: snapshot.data[index].data['password'],
                                email: snapshot.data[index].data['email'],
                                dId: snapshot.data[index].data['dId'],
                              )))
                },
                title: Text('Resturant Name : ' +
                    snapshot.data[index].data['restaurant_name']),
                subtitle: Text('Email : ' + snapshot.data[index].data['email']),
              );
            },
          );
        }
      },
    );
  }
}
