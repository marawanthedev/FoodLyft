import 'package:foodlyft/services/Restaurants/foodDetails_service.dart';

import '../../app/dependencies.dart';
import '../../app/main_dependecies.dart';
import '../../models/menu.dart';
import '../../services/firebase/firebase_service.dart';

class FoodDetailsService implements FoodDetailsAbs {
  final firebase = dependency<FirebaseService>();

  Future<List<MenuItems>> getMenuItem({String item}) async {
    List menuItems = await firebase.get(collection: "menuitems",documentId: "id");
    if (menuItems != null) {
      var menuItemsMap =
          menuItems.map((menuItem) => MenuItems.fromJson(menuItem)).toList();
      return menuItemsMap;
    }
  }
}