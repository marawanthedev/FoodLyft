import 'package:flutter/material.dart';
import 'package:foodlyft/models/menu.dart';

class ProviderCartItem {
  final String id;
  final String title;
  int quantity;
  final double price;
  final String imgSrc;

  ProviderCartItem({
    @required this.id,
    @required this.title,
    @required this.quantity,
    @required this.price,
    @required this.imgSrc,
  });
}

class CartProvider with ChangeNotifier {
  List<ProviderCartItem> _items = new List<ProviderCartItem>();
  List<ProviderCartItem> get items {
    return _items;
  }

  void addItem(MenuItems menuItem) {
    print(menuItem.itemName);
    bool isDuplicate = false;
    _items.forEach((item) {
      if (item.title == menuItem.itemName) {
        int quantity = item.quantity;
        item.quantity = quantity + 1;
        isDuplicate = true;
      }
    });
    _items.add(ProviderCartItem(
        id: DateTime.now().toString(),
        title: menuItem.itemName,
        quantity: 1,
        price: menuItem.price,
        imgSrc: menuItem.image));

    notifyListeners();
    print(_items.length);
    _items.forEach((element) {
      print(element.title);
    });
  }

  void decreaseQuantity(i) {
    _items[i].quantity -= 1;
    notifyListeners();
  }

  void increaseQuantity(i) {
    _items[i].quantity += 1;
    notifyListeners();
  }

  void deleteItem(i) {
    _items.removeAt(i);
    notifyListeners();
  }

  int get itemCount {
    int count = 0;
    _items.forEach((item) {
      count += item.quantity;
    });
    return count;
  }
}
