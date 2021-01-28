import 'package:foodlyft/screens/viewmodel.dart';
import "../../models/user.dart";
import "../../services/UserAuth/userAuth_service.dart";
import '../../app/dependencies.dart';
import "../Restaurantlist/Restaurant_List.dart";
import 'helpers/dependencies.dart';

class LoginViewModel extends Viewmodel {
  List<User> users = List<User>();

  LoginViewModel();
  // also concrete class
  UserAuthService get dataService => dependency();

  Future<bool> validateLoginInput(User user, context) async {
    turnBusy();

    final users = await getUsers();
    if (users != null) {
      users.forEach((_user) {
        if (_user.email == user.email) {
          if (_user.password == user.password) {
            turnIdle();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RestaurantMenu()));
          } else {
            return;
          }
        }
      });
    } else {
      turnIdle();
    }
    turnIdle();
  }

  Future<List<User>> getUsers() async {
    turnBusy();
    final users = await dataService.getUsersList();
    print(users);
    turnIdle();
    return users;
  }
}
