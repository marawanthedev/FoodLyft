// import '../dependencies.dart';
// import 'rest_service.dart';


// class RestaurantDataService {
//   final rest = service<RestService>();

//   Future<List<Restaurant>> getRestaurantList() async {
//     final listJson = await rest.get('restaurants');

//     return (listJson as List)
//         .map((itemJson) => User.fromJson(itemJson))
//         .toList();
//   }

//   Future<User> getRestaurant({int id}) async {
//     final json = await rest.get('users/$id');
//     return User.fromJson(json);
//   }
// }
