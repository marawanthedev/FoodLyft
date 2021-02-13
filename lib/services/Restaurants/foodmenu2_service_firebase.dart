import 'package:foodlyft/app/dependencies.dart';
import 'package:foodlyft/models/menu.dart';
import 'package:foodlyft/services/firebase/firebase_service.dart';

import 'foodmenu2_service.dart';

class MenuItemsService implements FoodMenu {
  final firebase = dependency<FirebaseService>();

  Future<List<MenuItems>> getRestaurantMenu({String id}) async {
    List menuItems = await firebase.get(collection: "menuitems");
    if (menuItems != null) {
      var menuItemsMap =
          menuItems.map((menuItem) => MenuItems.fromJson(menuItem)).toList();
      return menuItemsMap;
    }
  }

  Future<MenuItems> updateMenuItems(
      {String itemName, String description, double price, String image}) async {
    firebase.patch(collection: "menuitems", documentId: "id");
  }

  Future deleteMenuItem({String item}) async {
    await firebase.delete(documentId: item);
  }
}
