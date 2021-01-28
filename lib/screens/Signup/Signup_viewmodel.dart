import 'package:foodlyft/screens/viewmodel.dart';
import 'package:foodlyft/services/UserAuth/userAuth_service_firebase.dart';
import "../../models/user.dart";
import "../../services/UserAuth/userAuth_service.dart";
import '../../app/dependencies.dart';

class SignupViewModel extends Viewmodel {
    List<User> users = List<User>();


  SignupViewModel();
  // also concrete class
  UserAuthService get dataService => dependency();

  void addUser(User user) async {
    turnBusy();
    if (user == null) return;
    print("model adding in progress");
    bool duplicateAccount = await checkForDuplicity(user);
    if (!duplicateAccount) {
      print("new user is actually added");
      final newUser = await dataService.addUser(user);
      users.add(newUser);
    }
    else{
      print("duplicate Account");
    }

    turnIdle();
  }

  Future<bool> checkForDuplicity(User user)async {
    turnBusy();
    
    final users=await getUsers();
    bool duplicate=false;
   if(users!=null){
    print("dup");
      users.forEach((_user) {
      print(_user.email);
      if (_user.email == user.email) {
        turnIdle();
        duplicate=true;
        return duplicate;
      }
    });
   }
   else{
    turnIdle();
    return duplicate;
   }
   turnIdle();
    return duplicate;
  }

  Future<List<User>> getUsers() async {
    turnBusy();
    turnIdle();
    final users= await dataService.getUsersList();
   return users;
  }
}
