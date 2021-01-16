import 'package:flutter/cupertino.dart';
import '../providers/restaurant.dart';

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
      title: "Carl's jr",
      image: 'assets/images/carls.png',
      description: "Desciprion 1",
      price: 15,
      isTouched: true,
    ),
    Restaurant(
      id: 'r5',
      title: "Hayfa",
      image: 'assets/images/Hayfa.png',
      description: "Desciprion 1",
      price: 35,
      isTouched: true,
    ),
    Restaurant(
      id: 'r6',
      title: "Halab",
      image: 'assets/images/halab.jpg',
      description: "Desciprion 1",
      price: 41,
      isTouched: true,
    ),
    Restaurant(
      id: 'r7',
      title: "Italian",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 18,
      isTouched: true,
    ),
    Restaurant(
      id: 'r8',
      title: "Bilad",
      image: 'assets/images/bilad.png',
      description: "Desciprion 1",
      price: 18,
      isTouched: true,
    ),
    Restaurant(
      id: 'r9',
      title: "Arab",
      image: 'assets/images/arab.jpg',
      description: "Desciprion 1",
      price: 18.5,
      isTouched: true,
    ),
    Restaurant(
      id: 'r10',
      title: "Nando's",
      image: 'assets/images/fastfood.jpg',
      description: "Desciprion 1",
      price: 14,
      isTouched: true,
    ),
    Restaurant(
      id: 'r11',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 18,
      isTouched: true,
    ),
    Restaurant(
      id: 'r12',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 17,
      isTouched: true,
    ),
    Restaurant(
      id: 'r13',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 20,
      isTouched: true,
    ),
    Restaurant(
      id: 'r14',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 20,
      isTouched: true,
    ),
    Restaurant(
      id: 'r15',
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
