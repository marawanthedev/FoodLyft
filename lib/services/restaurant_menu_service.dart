
// import 'rest_service.dart';

// class RestaurantsDataService {
//   final rest = service<RestService>();

//   Future<List<Restaurants>> getRestaurantList({int restaurantId}) async {
//     final listJson = await rest.get('restaurants?restaurantId=$restaurantId');

//     return (listJson as List)
//         .map((itemJson) => Restaurant.fromJson(itemJson))
//         .toList();
//   }

//   // }
