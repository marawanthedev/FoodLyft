import '../../models/user.dart';

abstract class UserAuthService {
  Future<User> addUser(User user);
  Future<User> updateUserInfo(String name, String email, String phoneNumber);
  Future<List<User>> getUsersList();
  void addUserInAuth(User user);
  User getUserInAuth();
}
