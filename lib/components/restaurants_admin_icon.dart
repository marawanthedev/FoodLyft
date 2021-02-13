import 'package:flutter/material.dart';

class AdminRestaurantItem extends StatelessWidget {
  final String title;
  final String image;

  AdminRestaurantItem({this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(title),
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        trailing: Container(
          child: Container(
            width: 100,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                  color: Theme.of(context).primaryColor,
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                  color: Theme.of(context).errorColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
