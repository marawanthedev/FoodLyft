import 'package:get_it/get_it.dart';
import '../services/UserAuth/userAuth_service.dart';
import "../services/UserAuth/userAuth_service_firebase.dart";

GetIt dependency = GetIt.instance;

void init() {
  // Services
  // dependency.registerLazySingleton(() => RestService());

  dependency
      .registerLazySingleton<UserAuthService>(() => UserAuthServiceFirebase());

  // dependency
  // .registerLazySingleton<LoginService>(() => LoginServiceFirebase());

  // dependency.registerLazySingleton<UserService>(() => UserServiceRest());

  // // Viewmodels
  // dependency.registerLazySingleton(() => LoginViewmodel());
  // dependency.registerLazySingleton(() => TodolistViewmodel());
}
