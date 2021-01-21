import 'package:flutter/cupertino.dart';
import 'package:foodlyft/models/menu.dart';
import '../models/restaurant.dart';

class Restaurants with ChangeNotifier {
  var ind;
  int restaurantId;
  List<MenuItems> itemsa = [];

  List<List<Restaurant>> restList = [];
  List<Restaurant> arabList = [];
  List<Restaurant> fastfoodList = [];
  List<Restaurant> westernfoodList = [];
  int tempCategoryIndex;
  int tempItem;
  Restaurant restaurantObject;

  getREstaurantByCategory() {
    // This Method Is used to get Restaurants by Category Title and Add the Specific Restaurants Inside this Category
    fastfoodList.clear();
    arabList.clear();
    westernfoodList.clear();
    _items.forEach((e) {
      if (e.category == 'Arab') {
        arabList.add(e);
      } else if (e.category == 'Fast Food') {
        fastfoodList.add(e);
      } else if (e.category == 'Western Food') {
        westernfoodList.add(e);
      }
    });
  }

  getCategory() {
    return restList[tempCategoryIndex][0]
        .category; //To Print each Category Title
  }

  getLists() {
    restList
        .clear(); //To clear the getList function after execution and to avoid Duplicate Restaurants in the Restaurant Category
    restList.add(fastfoodList);
    restList.add(arabList);
    restList.add(westernfoodList);
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
          price: 20.0,
          image: "assets/images/bigmac.jpg",
        ),
        MenuItems(
            resturantId: "r1",
            itemName: "Cheese Burger",
            description: "Cheese Burger pickles ",
            price: 10.0,
            image: "assets/images/CheeseBurger.jpg"),
        MenuItems(
            resturantId: "r1",
            itemName: "Mac Chicken ",
            description: "Chicken Sandwich  ",
            price: 10.0,
            image: "assets/images/Chickenburger.jpg"),
        MenuItems(
            resturantId: "r1",
            itemName: "5 piece nuggets",
            description: "Crunchy Fried Nuggets",
            price: 15.0,
            image:"assets/images/nuggets.jpg"),
      ],
      isTouched: true,
    ),
    Restaurant(
      id: 'r2',
      title: "Pizza Hut",
      image: 'assets/images/pizza.png',
      description: "Desciprion 1",
      price: 15,
      category:"Fast Food",
      itemsa: [
        MenuItems(
            resturantId: "r2",
            itemName: " SuperSupreme",
            description: "Large Pizza",
            price: 20.0,
            image:"assets/images/fasfood.jpg"),
        MenuItems(
            resturantId: "r2",
            itemName: " SuperSupreme",
            description: "Large Pizza",
            price: 10.0,
            image:"assets/images/classic.png"),
        MenuItems(
            resturantId: "r2",
            itemName: " SuperSupreme",
            description: "Large Pizza",
            price: 10.0,
            image:"assets/images/classic.png"),
        MenuItems(
            resturantId: "r2",
            itemName: " SuperSupreme",
            description: "Large Pizza",
            price: 15.0,
            image:"assets/images/classic.png"),
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
      category: "Arab",
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
      title: "Bilad",
      image: 'assets/images/bilad.png',
      description: "Desciprion 1",
      price: 18,
      category: "Arab",
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
      title: "Hadrmawt",
      image: 'assets/images/hadrmawt.png',
      description: "Desciprion 1",
      price: 10,
      category: "Arab",
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
      title: "Italian",
      image: 'assets/images/italian.jpg',
      description: "Desciprion 1",
      price: 18,
      category: "Western Food",
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
      title: "Mexican",
      image: 'assets/images/breakfast.jpg',
      description: "Desciprion 1",
      price: 18,
      category: "Western Food",
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
      title: "Nando's",
      image: 'assets/images/nandos.jpg',
      description: "Desciprion 1",
      price: 10,
      category: "Western Food",
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
  ];

  List<Restaurant> get items {
    return [..._items];
  }

  MenuItems getItem(int restaurantIndex, int itemIndex) {
    return _items[restaurantIndex].itemsa[itemIndex];
  }

  checkList(String id) {
    //To Check each Restaurant inside the items and return each restaurant to the restaurantObject using Restaurant Id
    restaurantId = int.parse(id.split("")[1]) - 1;
    for (var item in _items) {
      if (item.id == id) {
        restaurantObject = item;
      }
    }
  }
}
