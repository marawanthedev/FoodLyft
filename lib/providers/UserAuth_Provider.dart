import 'package:flutter/cupertino.dart';
import 'package:foodlyft/models/user.dart';

class UserAuthProvider with ChangeNotifier {
  List<User> _users = List<User>();
  User _userInAuth;

  void addUser(User user) {
    _users.add(user);

    _users.forEach((element) {
      print(element.name);
      print(element.phoneNumber);
    });
  }
  updateAttributes(String name, String email, String phoneNumber) {
    this._userInAuth.name =  name;
    this._userInAuth.email = email;
    this._userInAuth.phoneNumber = phoneNumber;
    // this function listen to any change in the provider and update the tree.
    notifyListeners();
  }

  void addUserInAuth(User user) {
    _userInAuth = user;
    print(user.email);
  }

  User getUserInAuth() {
    return _userInAuth;
  }

  List<User> get users {
    return [..._users];
  }
}
