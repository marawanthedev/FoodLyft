import 'package:foodlyft/app/main_dependecies.dart';
import 'package:foodlyft/screens/Restaurantlist/Restaurant_List_viewmodel.dart';
import 'package:foodlyft/services/Restaurants/restaurants_service.dart';
import 'package:foodlyft/services/Restaurants/restaurants_service_firebase.dart';
import 'package:get_it/get_it.dart';
import '../services/UserAuth/userAuth_service.dart';
import "../services/firebase/firebase_service.dart";
import "../services/UserAuth/userAuth_service_firebase.dart";
import "../screens/Signup/Signup_viewmodel.dart";
import "../screens/Login/login_viewmodel.dart";

GetIt dependency = GetIt.instance;

void init() async {
  // Services
  dependency.registerLazySingleton(() => FirebaseService());

  dependency.registerLazySingleton<UserAuthService>(() => UserAuthServiceFirebase());
  dependency.registerLazySingleton<RestaurantsService>(() => RestaurantsFirebaseService());
  dependency.registerLazySingleton(() => SignupViewModel());
  dependency.registerLazySingleton(() => LoginViewModel());
  dependency.registerLazySingleton(() => FoodMenu2());
  dependency.registerLazySingleton(() => RestaurantViewModel());

  

  // dependency
  // .registerLazySingleton<LoginService>(() => LoginServiceFirebase());

  // dependency.registerLazySingleton<UserService>(() => UserServiceRest());

  // // Viewmodels
  // dependency.registerLazySingleton(() => LoginViewmodel());
  // dependency.registerLazySingleton(() => TodolistViewmodel());
}
