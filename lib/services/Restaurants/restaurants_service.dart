import '../../models/restaurant.dart';

abstract class RestaurantsService {
  Future<Restaurant> addRestaurant(Restaurant restaurant);
  Future<Restaurant> updateRestaurantInfo(String title, String category, String image);
  Future<List<Restaurant>> getRestaurantsList();
  
}
