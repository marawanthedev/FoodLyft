import '../../app/dependencies.dart';
import '../../services/Restaurants/restaurants_service.dart';

import '../../app/main_dependecies.dart';
import '../viewmodel.dart';

class AdminEditViewModel extends Viewmodel {
  List<Restaurant> restaurants;
  int _selected;
  AdminEditViewModel();

  RestaurantsService get dataService => dependency();

  void addRestaurant(Restaurant restaurant) async {
    turnBusy();
    if (restaurant == null) return;
    await dataService.addRestaurant(restaurant);

    turnIdle();
  }

  Restaurant get restaurant => (restaurants != null) && (_selected != null)
      ? restaurants[_selected]
      : null;
  void getRestaurantsList() async {
    turnBusy();
    restaurants = await dataService.getRestaurantsList();
    _selected = null;
    turnIdle(); //to notify Listeners
  }

  void updateRestaurantInfo() async {
    turnBusy();
    await dataService.updateRestaurantInfo();
    turnIdle();
  }
}
