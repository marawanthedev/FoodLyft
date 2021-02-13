import '../../models/user.dart';

abstract class UserAuthService {
  Future<User> addUser(User user);
Future<User> updateUserInfo({String userId, var data});
  Future<List<User>> getUsersList();
  void addUserInAuth(User user);
  User getUserInAuth();
}
