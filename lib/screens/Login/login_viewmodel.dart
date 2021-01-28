import 'package:foodlyft/screens/viewmodel.dart';
import "../../models/user.dart";
import "../../services/UserAuth/userAuth_service.dart";
import '../../app/dependencies.dart';
import "../Restaurantlist/Restaurant_List.dart";
import 'helpers/dependencies.dart';

class LoginViewModel extends Viewmodel {

  LoginViewModel();
  // also concrete class
  UserAuthService get dataService => dependency();

  void navigate(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RestaurantMenu()));
  }

  Future<bool> validateLoginInput(User user) async {
    turnBusy();
    bool info_is_correct = false;
    final users = await getUsers();
    if (users != null) {
      users.forEach((_user) {
        if (_user.email == user.email) {
          if (_user.password == user.password) {
            turnIdle();
            info_is_correct = true;
            return info_is_correct;
          }
        }
      });
      return info_is_correct;
    }

    turnIdle();
    return info_is_correct;
  }

  Future<List<User>> getUsers() async {
    turnBusy();
    final users = await dataService.getUsersList();
    print(users);
    turnIdle();
    return users;
  }
}
