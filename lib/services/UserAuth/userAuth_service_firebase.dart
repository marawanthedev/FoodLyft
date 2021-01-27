import 'userAuth_service.dart';
import '../../models/user.dart';
import '../firebase/firebase_service.dart';

class UserAuthServiceFirebase implements UserAuthService {
  final firebase = FirebaseService();

  Future<User> addUser(User user) {}
  Future<User> updateUserInfo(String name, String email, String phoneNumber) {}
  Future<List<User>> getUsersList() async {
    final usersList = await firebase.get(collection: "users");

    var usersMap = usersList.documents.map((document) {
      var documentData = document.data;
      documentData['id'] = document.documentID;
      return documentData;
    }).toList();
    return usersMap;
  }
}
