import 'package:flutter/material.dart';
import '../app/main_dependecies.dart';

class AdminRestaurantItem extends StatelessWidget {
  final String title;
  final String image;
  final String id;

  AdminRestaurantItem({this.title, this.image, this.id});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Restaurants>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              data.getCategory(),
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          height: 170,
          child: ListView.builder(
            itemCount: data.restList[data.tempCategoryIndex].length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title:
                      Text(data.restList[data.tempCategoryIndex][index].title),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        data.restList[data.tempCategoryIndex][index].image),
                  ),
                  trailing: Container(
                    child: Container(
                      width: 100,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditRestaurant())),
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
            },
          ),
        ),
      ],
    );
  }
}
