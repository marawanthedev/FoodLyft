import 'userAuth_service.dart';
import '../../models/user.dart';
import '../firebase/firebase_service.dart';
import "../../app/dependencies.dart";

class UserAuthServiceFirebase implements UserAuthService {
  final firebase = dependency<FirebaseService>();

  Future<User> addUser(User user) async {
    print("model adding rest in progress");

    firebase.post(collection: "users", data: user.toJson());
  }

  Future<User> updateUserInfo(
      String name, String email, String phoneNumber) async {
    // firebase.patch(collection: "users",documentId: )
  }
  Future<List<User>> getUsersList() async {
    List users = await firebase.get(collection: "users");
    if (users != null) {
      print("users not null");
      var usersMap = users.map((user) => User.fromJson(user)
      ).toList();
      return usersMap;
    }
   
  }
}
