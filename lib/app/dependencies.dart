import 'package:get_it/get_it.dart';
import '../services/UserAuth/userAuth_service.dart';
import "../services/firebase/firebase_service.dart";
import "../services/UserAuth/userAuth_service_firebase.dart";
import "../screens/Signup/Signup_viewmodel.dart";

GetIt dependency = GetIt.instance;

void init() async {
  // Services
  // dependency.registerLazySingleton(() => RestService());
  print("registerd");
  // await setupLocator();

  dependency.registerLazySingleton(() => FirebaseService());

  dependency
      .registerLazySingleton<UserAuthService>(() => UserAuthServiceFirebase());

  // dependency
  // .registerLazySingleton<LoginService>(() => LoginServiceFirebase());

  // dependency.registerLazySingleton<UserService>(() => UserServiceRest());

  // // Viewmodels
  // dependency.registerLazySingleton(() => LoginViewmodel());
  // dependency.registerLazySingleton(() => TodolistViewmodel());
}
