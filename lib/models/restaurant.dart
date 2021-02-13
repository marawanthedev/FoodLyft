import 'package:flutter/foundation.dart';
import 'package:foodlyft/models/menu.dart';

class Restaurant with ChangeNotifier {
  final String id;
  final String title;
  final String image;
  final String description;
  final int price;
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

  Restaurant.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            title: json['title'],
            image: json['image'],
            description: json['description'],
            price: json['price'],
            category: json['category']);

  Map<String, dynamic> toJson() => {
        'title': title,
        'image': image,
        'description': description,
        'price': price,
        'category': category
      };
}
