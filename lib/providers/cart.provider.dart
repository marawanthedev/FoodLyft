import 'package:flutter/material.dart';
import 'package:foodlyft/models/menu.dart';
import 'package:foodlyft/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    @required this.id,
    @required this.title,
    @required this.quantity,
    @required this.price,
  });
}

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items = {};
  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    int count = 0;
    _items.forEach((key, value) {
      count += value.quantity;
    });
    return count;
  }

  void addItem(MenuItems menuItem) {
    print(menuItem.itemName);
    if (_items.containsKey(menuItem.itemName)) {
      // change quantity...
      _items.update(
        menuItem.itemName,
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          title: existingCartItem.title,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        menuItem.itemName,
        () => CartItem(
          id: DateTime.now().toString(),
          title: menuItem.itemName,
          price: menuItem.price,
          quantity: 1,
        ),
      );
    }
    notifyListeners();
  }
}
