import 'package:flutter/material.dart';
import 'package:foodlyft/models/menu.dart';

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
  // widget.cartProvider.addItem(
  //                               widget.restaurantProvider.getItem(
  //                                   widget.restaurantProvider.restaurantId,
  //                                   widget.restaurantProvider.ind)
  //                                   );

  void addItem(MenuItems menuItem){

    
  }
  int get itemCount {
    int count = 0;
    _items.forEach((key, value) {
      count += value.quantity;
    });
    return count;
  }
}
