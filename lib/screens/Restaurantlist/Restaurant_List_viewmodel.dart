import 'package:foodlyft/app/dependencies.dart';
import 'package:foodlyft/app/main_dependecies.dart';
import 'package:foodlyft/models/restaurant.dart';
import 'package:foodlyft/screens/viewmodel.dart';
import 'package:foodlyft/services/Restaurants/restaurants_service.dart';

class RestaurantViewModel extends Viewmodel {
  List<Restaurant> restaurants;
  int _selected;
  RestaurantViewModel();
  RestaurantsService get dataService => dependency();

  void addRestaurant(Restaurant restaurant) async {
    turnBusy();
    if (restaurant == null) return;
    await dataService.addRestaurant(restaurant);

    turnIdle();
  }

  void getRestaurantsList() async {
    turnBusy();
    restaurants = await dataService.getRestaurantsList();
    _selected = null;
    turnIdle(); //to notify Listeners
  }
}
