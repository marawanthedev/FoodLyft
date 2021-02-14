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
      if(e.category!=null){
        var cat=e.category;
  if (e.category == 'Arab'||e.category=="arab") {
        arabList.add(e);
      } else if (e.category == 'Fast Food'||e.category=="fastfood"||e.category=="fast food"||e.category=="Fast Food") {
        fastfoodList.add(e);
      } else if (e.category == 'Western Food'||e.category=="western food"||e.category=="westernfood"||e.category=="WesternFood") {
        westernfoodList.add(e);
      }
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
            image: "assets/images/nuggets.jpg"),
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
            itemName: " SuperSupreme",
            description: "Large Pizza",
            price: 20.0,
            image: "assets/images/pizzahut1.jpg"),
        MenuItems(
            resturantId: "r2",
            itemName: " Chicken Delight",
            description: "Large Pizza",
            price: 10.0,
            image: "assets/images/chickenpizza.jpg"),
        MenuItems(
            resturantId: "r2",
            itemName: " Pepperoni",
            description: "Large Pizza",
            price: 10.0,
            image: "assets/images/pepperoni.jpg"),
        MenuItems(
            resturantId: "r2",
            itemName: " Shrimp Pizza",
            description: "Large Pizza",
            price: 15.0,
            image: "assets/images/fruitpizza.jpg"),
        MenuItems(
            resturantId: "r2",
            itemName: " Shrimp Pizza",
            description: "Large Pizza",
            price: 15.0,
            image: "assets/images/fruitpizza.jpg"),
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
            itemName: "Zinger Sandwich",
            description: "Sandwich",
            price: 20.0,
            image: "assets/images/zinger.jpg"),
        MenuItems(
            resturantId: "r3",
            itemName: "Chicken Bucket",
            description: "SuperSupreme",
            price: 10.0,
            image: "assets/images/bucket.png"),
        MenuItems(
            resturantId: "r3",
            itemName: "Fries",
            description: "Large Fries",
            price: 10.0,
            image: "assets/images/fries.jpg"),
        MenuItems(
            resturantId: "r3",
            itemName: "Chicken Burger",
            description: "Sandwich",
            price: 15.0,
            image: "assets/images/Chickenburger.jpg"),
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
            itemName: "Super Star ",
            description: "Beef Sandwich",
            price: 20.0,
            image: "assets/images/carlsjr1.jpg"),
        MenuItems(
            resturantId: "r4",
            itemName: "Cheese Stuffed",
            description: "Cheese",
            price: 10.0,
            image: "assets/images/carlsjr2.jpg"),
        MenuItems(
            resturantId: "r4",
            itemName: "Beef Bacon",
            description: "Bacon",
            price: 10.0,
            image: "assets/images/carlsjr3.jpg"),
        MenuItems(
            resturantId: "r4",
            itemName: "Beef Master",
            description: "Master",
            price: 15.0,
            image: "assets/images/carlsjr4.jpg"),
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
            itemName: "Kabsa",
            description: "Rice with Chicken",
            price: 20.0,
            image: "assets/images/kabsa.jpg"),
        MenuItems(
            resturantId: "r5",
            itemName: "kabab",
            description: "Grilled Kabab",
            price: 10.0,
            image: "assets/images/Kabab.jpg"),
        MenuItems(
            resturantId: "r5",
            itemName: "Nuggets",
            description: "Chicken Nuggets",
            price: 10.0,
            image: "assets/images/nuggets.jpg"),
        MenuItems(
            resturantId: "r5",
            itemName: "Shawerma",
            description: "Sandwich",
            price: 15.0,
            image: "assets/images/shawerma.jpg"),
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
            itemName: "Shawerma",
            description: "Chicken Shawerma",
            price: 20.0,
            image: "assets/images/shawerma.jpg"),
        MenuItems(
            resturantId: "r6",
            itemName: "Beef Shawerma",
            description: "Beef Shawerma topped",
            price: 10.0,
            image: "assets/images/beefshawerma.jpg"),
        MenuItems(
            resturantId: "r6",
            itemName: "Nuggets",
            description: "Chicken Nuggets",
            price: 10.0,
            image: "assets/images/nuggets.jpg"),
        MenuItems(
            resturantId: "r6",
            itemName: "Shawerma",
            description: "Sandwich",
            price: 15.0,
            image: "assets/images/shawerma.jpg"),
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
            itemName: "Kabsa",
            description: "Rice with Chicken",
            price: 20.0,
            image: "assets/images/kabsa.jpg"),
        MenuItems(
            resturantId: "r7",
            itemName: "kabab",
            description: "Grilled Kabab",
            price: 10.0,
            image: "assets/images/Kabab.jpg"),
        MenuItems(
            resturantId: "r7",
            itemName: "Nuggets",
            description: "Chicken Nuggets",
            price: 10.0,
            image: "assets/images/nuggets.jpg"),
        MenuItems(
            resturantId: "r7",
            itemName: "Shawerma",
            description: "Sandwich",
            price: 15.0,
            image: "assets/images/shawerma.jpg"),
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
            itemName: "Kabsa",
            description: "Rice with Chicken",
            price: 20.0,
            image: "assets/images/kabsa.jpg"),
        MenuItems(
            resturantId: "r8",
            itemName: "kabab",
            description: "Grilled Kabab",
            price: 10.0,
            image: "assets/images/Kabab.jpg"),
        MenuItems(
            resturantId: "r8",
            itemName: "Nuggets",
            description: "Chicken Nuggets",
            price: 10.0,
            image: "assets/images/nuggets.jpg"),
        MenuItems(
            resturantId: "r8",
            itemName: "Shawerma",
            description: "Sandwich",
            price: 15.0,
            image: "assets/images/shawerma.jpg")
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
            itemName: " SuperSupreme",
            description: "Large Pizza",
            price: 20.0,
            image: "assets/images/italianpizza.jpg"),
        MenuItems(
            resturantId: "r9",
            itemName: " Chicken Delight",
            description: "Large Pizza",
            price: 10.0,
            image: "assets/images/chickenpizza.jpg"),
        MenuItems(
            resturantId: "r9",
            itemName: " Pepperoni",
            description: "Large Pizza",
            price: 10.0,
            image: "assets/images/pepperoni.jpg"),
        MenuItems(
            resturantId: "r9",
            itemName: " Shrimp Pizza",
            description: "Large Pizza",
            price: 15.0,
            image: "assets/images/fruitpizza.jpg"),
        MenuItems(
            resturantId: "r9",
            itemName: " Shrimp Pizza",
            description: "Large Pizza",
            price: 15.0,
            image: "assets/images/fruitpizza.jpg"),
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
            itemName: "Nacho's",
            description: "Stuffed Nacho's",
            price: 20.0,
            image: "assets/images/nacho1.jpg"),
        MenuItems(
            resturantId: "r10",
            itemName: "Casadia",
            description: "Chicken Casadia",
            price: 10.0,
            image: "assets/images/casadia.jpg"),
        MenuItems(
            resturantId: "r10",
            itemName: "Grilled Chicken",
            description: "Mexican",
            price: 10.0,
            image: "assets/images/grilled1chicken.jpg"),
        MenuItems(
            resturantId: "r10",
            itemName: "Pasta",
            description: "Pasta Mexican",
            price: 15.0,
            image: "assets/images/italian.jpg"),
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
            itemName: "Nando's Chicken",
            description: "Grilled Chicken",
            price: 20.0,
            image: "assets/images/grilledchicken.jpg"),
        MenuItems(
            resturantId: "r11",
            itemName: "Casadia",
            description: "Chicken Casadia",
            price: 10.0,
            image: "assets/images/casadia.jpg"),
        MenuItems(
            resturantId: "r11",
            itemName: "Grilled Chicken",
            description: "Mexican",
            price: 10.0,
            image: "assets/images/grilled1chicken.jpg"),
        MenuItems(
            resturantId: "r11",
            itemName: "Pasta",
            description: "Pasta Mexican",
            price: 15.0,
            image: "assets/images/italian.jpg"),
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

  void addRestaurant(Restaurant restaurant) {
    final newRestaurant = Restaurant(
      title: restaurant.title,
      description: restaurant.category,
      image: restaurant.image,
      price: restaurant.price,
      category: restaurant.category,
      id: restaurant.id,
      itemsa: restaurant.itemsa,
    );
    _items.add(newRestaurant);
    //_items.insert(0, newRestaurant);
    notifyListeners();
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
