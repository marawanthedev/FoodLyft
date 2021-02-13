import 'package:foodlyft/app/dependencies.dart';
import 'package:foodlyft/models/menu.dart';
import 'package:foodlyft/models/restaurant.dart';
import 'package:foodlyft/screens/viewmodel.dart';
import 'package:foodlyft/services/Restaurants/foodmenu2_service.dart';

class FoodMenu2ViewModel extends Viewmodel {
  List<MenuItems> menus;
  Restaurant _restaurant;

  Restaurant get restaurant => _restaurant;

  set restaurant(Restaurant restaurant) {
    _restaurant = restaurant;
    getList();
  }

  FoodMenu2ViewModel();
  FoodMenu get dataService => dependency();

  Future<void> getList() async {
    if (restaurant == null) return;
    turnBusy();
    menus = await dataService.getRestaurantMenu(id: restaurant.id);
    turnIdle();
  }

  Future<void> deleteMenuItem(String item) async {
    turnBusy();
    await dataService.deleteMenuItem(item: menus[int.parse(item)].resturantId);
    menus.removeAt(int.parse(item));
    turnIdle();
  }
}
