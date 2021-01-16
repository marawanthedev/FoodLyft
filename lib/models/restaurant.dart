import 'package:flutter/foundation.dart';

class Restaurant {
  final String id;
  final String title;
  final String image;
  final bool isTouched;
  // final Function press;
  Restaurant({
    @required this.id,
    @required this.title,
    @required this.image,
    this.isTouched = false,
    // @required this.press,
  });
}
