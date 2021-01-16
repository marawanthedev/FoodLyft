import 'package:flutter/cupertino.dart';
import '../models/restaurant.dart';

class Restaurants with ChangeNotifier {
  List<Restaurant> _items = [
    Restaurant(
      id: 'r1',
      title: "Macdonald's",
      image: 'assets/images/Mac.png',
      description: "Desciprion 1",
      price: 20,
      isTouched: true,
    ),
    Restaurant(
      id: 'r2',
      title: "Pizza Hut",
      image: 'assets/images/pizza.png',
      description: "Desciprion 1",
      price: 15,
      isTouched: true,
    ),
    Restaurant(
      id: 'r3',
      title: "KFC",
      image: 'assets/images/kfc.png',
      description: "Desciprion 1",
      price: 10,
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 15,
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 35,
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 41,
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 18,
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 18,
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 18.5,
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 14,
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 18,
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 17,
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 20,
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 20,
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 20,
      isTouched: true,
    ),
  ];

  List<Restaurant> get items {
    return [..._items];
  }

  Restaurant findById(String id) {
    return _items.firstWhere((rest) => rest.id == id);
  }
}
