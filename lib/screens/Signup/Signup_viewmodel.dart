import 'package:foodlyft/screens/viewmodel.dart';
import 'package:foodlyft/services/UserAuth/userAuth_service_firebase.dart';
import "../../models/user.dart";
import "../../services/UserAuth/userAuth_service.dart";
import '../../app/dependencies.dart';

class SignupViewModel extends Viewmodel {
  List<User> users;

  SignupViewModel();
  UserAuthService get dataService => dependency();

  void addUser(User user) {

  }
}
