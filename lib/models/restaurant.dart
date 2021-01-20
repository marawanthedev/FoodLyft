import 'package:flutter/foundation.dart';
import 'package:foodlyft/models/menu.dart';

class Restaurant with ChangeNotifier {
  final String id;
  final String title;
  final String image;
  final String description;
  final double price;
  final String category;
  final bool isTouched;
  List<MenuItems> itemsa = [];
  // final Function press;
  Restaurant({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.description,
    @required this.price,
    @required this.category,
    this.isTouched = false,
    this.itemsa,
    // @required this.press,
  });
}
