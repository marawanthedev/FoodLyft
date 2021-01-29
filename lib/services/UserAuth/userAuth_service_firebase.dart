import 'userAuth_service.dart';
import '../../models/user.dart';
import '../firebase/firebase_service.dart';
import "../../app/dependencies.dart";

class UserAuthServiceFirebase implements UserAuthService {
  final firebase = dependency<FirebaseService>();
  User userInAuth;
  Future<User> addUser(User user) async {

    firebase.post(collection: "users", data: user.toJson());
  }

  void addUserInAuth(User user) {
    userInAuth = user;
  }

  User getUserInAuth() {
    return userInAuth;
  }

  Future<User> updateUserInfo(
      String name, String email, String phoneNumber) async {
    // firebase.patch(collection: "users",documentId: )
  }
  Future<List<User>> getUsersList() async {
    List users = await firebase.get(collection: "users");
    if (users != null) {
      var usersMap = users.map((user) => User.fromJson(user)).toList();
      return usersMap;
    }
  }
}
