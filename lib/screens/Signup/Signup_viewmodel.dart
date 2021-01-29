import 'package:foodlyft/screens/viewmodel.dart';
import "../../models/user.dart";
import "../../services/UserAuth/userAuth_service.dart";
import '../../app/dependencies.dart';

class SignupViewModel extends Viewmodel {
  SignupViewModel();
  // also concrete class
  UserAuthService get dataService => dependency();

  void addUser(User user) async {
    turnBusy();
    if (user == null) return;
    await dataService.addUser(user);

    turnIdle();
  }

  Future<bool> checkForDuplicity(User user) async {
    turnBusy();

    final users = await getUsers();
    bool duplicate = false;
    if (users != null) {
      users.forEach((_user) {
        if (_user.email == user.email) {
          turnIdle();
          duplicate = true;
          return duplicate;
        }
      });
    } else {
      turnIdle();
      return duplicate;
    }
    turnIdle();
    return duplicate;
  }

  Future<List<User>> getUsers() async {
    turnBusy();
    turnIdle();
    final users = await dataService.getUsersList();
    return users;
  }
}
