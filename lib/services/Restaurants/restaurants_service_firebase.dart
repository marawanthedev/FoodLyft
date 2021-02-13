import '../../app/dependencies.dart';
import '../../app/main_dependecies.dart';
import '../../models/restaurant.dart';
import '../../services/Restaurants/restaurants_service.dart';
import '../../services/firebase/firebase_service.dart';

class RestaurantsFirebaseService implements RestaurantsService {
  final firebase = dependency<FirebaseService>();

  Restaurant restaurant;

  Future<Restaurant> addRestaurant(Restaurant restaurant) async {
    firebase.post(collection: "restaurants", data: restaurant.toJson());
  }

  Future deleteRestaurant({String id}) async {
    await firebase.delete(documentId: id);
  }

  Restaurant getrestaurant() {
    return restaurant;
  }

  // Future<Restaurant> updateRestaurantInfo(
  //     String title, String category, String image) async {}

  Future<List<Restaurant>> getRestaurantsList() async {
    final List restaurants = await firebase.get(collection: "restaurants");

    var restaurantsMap = restaurants
        .map((restaurant) => Restaurant.fromJson(restaurant))
        .toList();
    return restaurantsMap;
  }
}
