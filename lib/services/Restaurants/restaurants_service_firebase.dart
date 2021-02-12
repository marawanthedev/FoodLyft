import 'package:foodlyft/app/dependencies.dart';
import 'package:foodlyft/models/restaurant.dart';
import 'package:foodlyft/services/Restaurants/restaurants_service.dart';
import 'package:foodlyft/services/firebase/firebase_service.dart';

class RestaurantsFirebaseService implements RestaurantsService {
  final firebase = dependency<FirebaseService>();

  Restaurant restaurant;

  Future<Restaurant> addRestaurant(Restaurant restaurant) async {
    firebase.post(collection: "restaurants", data: restaurant.toJson());
  }

  Restaurant getrestaurant() {
    return restaurant;
  }

  Future<Restaurant> updateRestaurantInfo(
      String title, String category, String image) async {}


  Future<List<Restaurant>> getRestaurantsList() async {
    List restaurants = await firebase.get(collection: "restaurants");
    if (restaurants != null) {
      var restaurantsMap = restaurants.map((restaurant) => Restaurant.fromJson(restaurant)).toList();
      return restaurantsMap;
    }
  }
}
