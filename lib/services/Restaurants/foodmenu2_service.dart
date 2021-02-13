import '../../models/menu.dart';

abstract class FoodMenu {
  Future<List<MenuItems>> getRestaurantMenu({ String id});
  Future<MenuItems> updateMenuItems(
      {String itemName, String description, double price, String image});
  Future deleteMenuItem({String item});
}
