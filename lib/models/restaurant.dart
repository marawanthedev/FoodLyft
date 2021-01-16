import 'package:flutter/foundation.dart';

class Restaurant {
  final String id;
  final String title;
  final String image;
  final String description;
  final double price;
  final bool isTouched;
  // final Function press;
  Restaurant({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.description,
    @required this.price,
    this.isTouched = false,
    // @required this.press,
  });
}
