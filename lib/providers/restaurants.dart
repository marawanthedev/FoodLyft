import 'package:flutter/cupertino.dart';
import 'package:foodlyft/models/menu.dart';
import '../models/restaurant.dart';

class Restaurants with ChangeNotifier {
  var ind;
  int restaurantId;
  List<MenuItems> itemsa = [];
  //Map restaurants = {
  //  'Arab': [],
  //  'Fast Food': [],
  //  'Italian': [],
  //};

  List<List<Restaurant>> restList = [];
  List<Restaurant> arabList = [];
  List<Restaurant> fastfoodList = [];
  int tempCategoryIndex;
  int tempItem;
  Restaurant restaurantObject;
  getREstaurantByCategory() {
    arabList.clear();
    fastfoodList.clear();
    _items.forEach((e) {
      if (e.category == 'Arab') {
        arabList.add(e);
      } else if (e.category == 'Fast Food') {
        fastfoodList.add(e);
      }
    });
  }

  getCategory() {
    return restList[tempCategoryIndex][0].category;
  }

  getLists() {
    restList.clear();
    restList.add(arabList);
    restList.add(fastfoodList);
  }

  List<Restaurant> _items = [
    Restaurant(
      id: 'r1',
      title: "Macdonald's",
      image: 'assets/images/Mac.png',
      description: "Desciprion 1",
      price: 20,
      category: "Fast Food",
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
      title: "Pizza Hut",
      image: 'assets/images/pizza.png',
      description: "Desciprion 1",
      price: 15,
      category: "Fast Food",
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
      category: "Fast Food",
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
      category: "Fast Food",
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
      category: "Arab",
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
      category: "Italian",
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
  ];

  List<Restaurant> get items {
    return [..._items];
  }

  //Restaurant findById(String id) {
  //  restaurantId = int.parse(id.split("")[1]) - 1;
  //  print("This is the index ${id}");
  //  return _items.firstWhere((rest) => rest.id == id);
  //}

  checkList(String id) {
    restaurantId = int.parse(id.split("")[1]) - 1;
    for (var item in _items) {
      if (item.id == id) {
        restaurantObject = item;
      }
    }
  }
}
