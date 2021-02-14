import '../viewmodel.dart';
import '../../services/UserAuth/userAuth_service.dart';
import '../../models/user.dart';
import '../../app/dependencies.dart';

class ProfileViewModel extends Viewmodel {
  ProfileViewModel();
  UserAuthService get dataService => dependency();
  User getUserInAuth() {
    turnBusy();
    turnIdle();
    return dataService.getUserInAuth();
  }

  void updateUserInfo(userId, data) {
    turnBusy();
    dataService.updateUserInfo(userId: userId, data: data);
    turnIdle();
  }
}
