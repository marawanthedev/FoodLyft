import '../../models/restaurant.dart';

abstract class RestaurantsService {
  Future<Restaurant> addRestaurant(Restaurant restaurant);
  Future<List<Restaurant>> getRestaurantsList();
  Future deleteRestaurant({String id});
}
