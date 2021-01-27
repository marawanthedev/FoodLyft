import 'package:foodlyft/screens/viewmodel.dart';
import 'package:foodlyft/services/UserAuth/userAuth_service_firebase.dart';
import "../../models/user.dart";
import "../../services/UserAuth/userAuth_service.dart";
import '../../app/dependencies.dart';

class SignupViewModel extends Viewmodel {
  List<User> users;

  SignupViewModel();
  UserAuthService get dataService => dependency();

  void addUser(User user) async {
    print("model adding in progress");
    if (user == null) return;
    turnBusy();
    // UserAuthService.addUser(user);
    // final newUser = await UserAuthService.addUser(user);
    final newUser = await dataService.addUser(user);
    users.add(newUser);
    turnIdle();
  }

  void getUsers() async {
    turnBusy();
    users = await dataService.getUsersList();
    turnIdle();
  }
}
