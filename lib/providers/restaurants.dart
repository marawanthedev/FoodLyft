import 'package:flutter/cupertino.dart';
import 'package:foodlyft/models/menu.dart';
import '../models/restaurant.dart';

class Restaurants with ChangeNotifier {
  var ind;
  int restaurantId;
  List<MenuItems> itemsa = [];
  List<Restaurant> _items = [
    Restaurant(
      id: 'r1',
      title: "Macdonald's",
      image: 'assets/images/Mac.png',
      description: "Desciprion 1",
      price: 20,
      itemsa: [
        MenuItems(
            resturantId: "r1",
            itemName: "Big Mac",
            description: "Big Mac Sandwich",
            price: 20.0),
        MenuItems(
            resturantId: "r1",
            itemName: "Cheese Burger",
            description: "Cheese Burger pickles ",
            price: 10.0),
        MenuItems(
            resturantId: "r1",
            itemName: "Mac Chicken ",
            description: "Chicken Sandwich  ",
            price: 10.0),
        MenuItems(
            resturantId: "r1",
            itemName: "5 piece nuggets",
            description: "Crunchy Fried Nuggets",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r2',
      title: "Pizzat Hut",
      image: 'assets/images/pizza.png',
      description: "Desciprion 1",
      price: 15,
      itemsa: [
        MenuItems(
            resturantId: "r2",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r2",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r2",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r2",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r3',
      title: "KFC",
      image: 'assets/images/kfc.png',
      description: "Desciprion 1",
      price: 10,
      itemsa: [
        MenuItems(
            resturantId: "r3",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r3",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r3",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r3",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r4',
      title: "Carl's jr",
      image: 'assets/images/carls.png',
      description: "Desciprion 1",
      price: 15,
      itemsa: [
        MenuItems(
            resturantId: "r4",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r4",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r4",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r4",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r5',
      title: "Hayfa",
      image: 'assets/images/Hayfa.png',
      description: "Desciprion 1",
      price: 35,
      itemsa: [
        MenuItems(
            resturantId: "r5",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r5",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r5",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r5",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r6',
      title: "Halab",
      image: 'assets/images/halab.jpg',
      description: "Desciprion 1",
      price: 41,
      itemsa: [
        MenuItems(
            resturantId: "r6",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r6",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r6",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r6",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r7',
      title: "Italian",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 18,
      itemsa: [
        MenuItems(
            resturantId: "r7",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r7",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r7",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r7",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r8',
      title: "Bilad",
      image: 'assets/images/bilad.png',
      description: "Desciprion 1",
      price: 18,
      itemsa: [
        MenuItems(
            resturantId: "r8",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r8",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r8",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r8",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r9',
      title: "Arab",
      image: 'assets/images/arab.jpg',
      description: "Desciprion 1",
      price: 18.5,
      itemsa: [
        MenuItems(
            resturantId: "r9",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r9",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r9",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r9",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r10',
      title: "Nando's",
      image: 'assets/images/fastfood.jpg',
      description: "Desciprion 1",
      price: 14,
      itemsa: [
        MenuItems(
            resturantId: "r10",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r10",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r10",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r10",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r11',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 18,
      itemsa: [
        MenuItems(
            resturantId: "r11",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r11",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r11",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r11",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r12',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 17,
      itemsa: [
        MenuItems(
            resturantId: "r12",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r12",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r12",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r12",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r13',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 20,
      itemsa: [
        MenuItems(
            resturantId: "r13",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r13",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r13",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r13",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r14',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 20,
      itemsa: [
        MenuItems(
            resturantId: "r14",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r14",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r14",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r14",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r15',
      title: "KFC",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 20,
      itemsa: [
        MenuItems(
            resturantId: "r15",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 20.0),
        MenuItems(
            resturantId: "r15",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r15",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 10.0),
        MenuItems(
            resturantId: "r15",
            itemName: "Large Pizza",
            description: "SuperSupreme",
            price: 15.0),
      ],
      isTouched: true,
    ),
  ];

  List<Restaurant> get items {
    return [..._items];
  }

  Restaurant findById(String id) {
    restaurantId = int.parse(id.split("")[1]) - 1;

    return _items.firstWhere((rest) => rest.id == id);
  }
}
