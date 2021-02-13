import 'package:foodlyft/models/menu.dart';

abstract class FoodDetailsAbs {
  Future<List<MenuItems>> getMenuItem({ String item});
}