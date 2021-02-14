import 'package:foodlyft/screens/viewmodel.dart';
import "../../models/user.dart";
import "../../services/UserAuth/userAuth_service.dart";
import '../../app/dependencies.dart';
import "../Restaurantlist/Restaurant_List_view.dart";
import 'helpers/dependencies.dart';


class LoginViewModel extends Viewmodel {
  // UserAuthProvider userAuthProvider= new UserAuthProvider();
  LoginViewModel();
  // also concrete class
  UserAuthService get dataService => dependency();
  void navigate(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RestaurantMenu()));
  }

  Future<bool> validateLoginInput(User user) async {
    turnBusy();
    bool infoIsCorrect = false;
    final users = await getUsers();
    if (users != null) {
      users.forEach((_user) {
        if (_user.email == user.email) {
          if (_user.password == user.password) {
            turnIdle();
            dataService.addUserInAuth(_user);
            infoIsCorrect = true;
            return infoIsCorrect;
          }
        }
      });
      return infoIsCorrect;
    }
    turnIdle();
    return infoIsCorrect;
  }

  Future<List<User>> getUsers() async {
    turnBusy();
    final users = await dataService.getUsersList();

    turnIdle();
    return users;
  }
}
