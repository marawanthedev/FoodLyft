import 'package:flutter/material.dart';
import 'package:foodlyft/providers/restaurants.provider.dart';
import 'package:foodlyft/screens/FoodMenu/Food_Menu2.dart';
import 'package:provider/provider.dart';
import '../screens/Restaurantlist/Constants.dart';

class CategoryItem extends StatefulWidget {
  final String id;
  final String title;
  String image;
  final bool isTouched;
  var color;
  int index;
  CategoryItem({
    this.id,
    this.title,
    this.image,
    this.isTouched = false,
    this.color,
    this.index,
  });

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Restaurants>(context);
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              data.tempItem = widget.index;
              data.checkList(widget.id);
              // data.restaurantId = widget.id;
              print("my index is #${widget.id}");
              Navigator.pushNamed(
                context,
                "/Food_Menu2",
              );
            },
            child: Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.fill),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(widget.title,
              style: TextStyle(
                  fontSize: 20,
                  color: widget.color,
                  fontWeight: FontWeight.bold)),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2),
            height: 3,
            width: 20,
            decoration: BoxDecoration(color: appMainColor),
          )
        ],
      ),
    );
  }
}
