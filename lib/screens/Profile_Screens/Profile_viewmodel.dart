import '../viewmodel.dart';
import '../../services/UserAuth/userAuth_service.dart';
import '../../models/user.dart';
import '../../app/dependencies.dart';

class ProfileViewModel extends Viewmodel {
  // UserAuthService get dataService => dependency();
  ProfileViewModel();
  User getUserInAuth() {
    turnBusy();
//   final users = await dataService.getUsersList();
    turnIdle();
    // return dataService.getUserInAuth();
  }
}

// turnBusy();
//   final users = await dataService.getUsersList();
//   turnIdle();
