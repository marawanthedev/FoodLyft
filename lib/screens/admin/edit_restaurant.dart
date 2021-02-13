import 'package:flutter/material.dart';

class EditRestaurant extends StatefulWidget {
  

  @override
  _EditRestaurantState createState() => _EditRestaurantState();
}

class _EditRestaurantState extends State<EditRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Restaurant'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Restaurant Name'),
              textInputAction: TextInputAction.next,
            ),
          ],),
        ),
      ),
       
    );
  }
}