import 'package:foodlyft/screens/FoodMenu/Food_Menu2_viewmodel.dart';

import '../app/main_dependecies.dart';
import '../screens/FoodMenu/Food_Menu2_view.dart';
import '../screens/Restaurantlist/Restaurant_List_viewmodel.dart';
import '../services/Restaurants/foodmenu2_service.dart';
import '../services/Restaurants/foodmenu2_service_firebase.dart';
import '../services/Restaurants/restaurants_service.dart';
import '../services/Restaurants/restaurants_service_firebase.dart';
import 'package:get_it/get_it.dart';
import '../services/UserAuth/userAuth_service.dart';
import "../services/firebase/firebase_service.dart";
import "../services/UserAuth/userAuth_service_firebase.dart";
import "../screens/Signup/Signup_viewmodel.dart";
import "../screens/Login/login_viewmodel.dart";
import "../screens/Profile_Screens/Profile_viewmodel.dart";

GetIt dependency = GetIt.instance;

void init() async {
  // Services
  dependency.registerLazySingleton(() => FirebaseService());

  dependency.registerLazySingleton<UserAuthService>(() => UserAuthServiceFirebase());
  dependency.registerLazySingleton<RestaurantsService>(() => RestaurantsFirebaseService());
  dependency.registerLazySingleton<FoodMenu>(() => MenuItemsService());

  dependency.registerLazySingleton(() => SignupViewModel());
  dependency.registerLazySingleton(() => LoginViewModel());
<<<<<<< HEAD
  dependency.registerLazySingleton(() => ProfileViewModel());

  // dependency.registerLazySingleton(() => ProfileViewModel());
=======
  dependency.registerLazySingleton(() => FoodMenu2());
  dependency.registerLazySingleton(() => RestaurantViewModel());
  dependency.registerLazySingleton(() => FoodMenu2ViewModel());


  
>>>>>>> ef7250242ffc1191139fe28956f2385ca2b62f1f

  // dependency
  // .registerLazySingleton<LoginService>(() => LoginServiceFirebase());

  // dependency.registerLazySingleton<UserService>(() => UserServiceRest());

  // // Viewmodels
  // dependency.registerLazySingleton(() => LoginViewmodel());
  // dependency.registerLazySingleton(() => TodolistViewmodel());
}
