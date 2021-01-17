import 'package:flutter/cupertino.dart';

class ProfileProvider with ChangeNotifier {
  String name = "Jhon Doe";
  String email = "jhondoe@gmail.com";
  String phone = "+0112345677";
  String image =
      "https://i.pinimg.com/originals/57/1b/a6/571ba67a5d3cf25533fd4ed7f29a79cb.jpg";

  // example to update values with notifiyListeners.
  updateAttributes(String n, String e, String p) {
    this.name = n;
    this.email = e;
    this.phone = p;
    
    // this function listen to any change in the provider and update the tree.
    notifyListeners();
  }
}
