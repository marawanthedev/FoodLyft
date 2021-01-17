import 'package:flutter/material.dart';
import 'package:foodlyft/providers/restaurants.dart';
import '../../components/categoryItem.dart';
import 'package:provider/provider.dart';
class RestaurantsGrid extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final restaurantsData = Provider.of<Restaurants>(context);
    final restaurantss = restaurantsData.items;
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(10.0),
      itemCount: restaurantss.length,
      itemBuilder: (ctx, i) => CategoryItem(
        restaurantss[i].id,
        restaurantss[i].title,
        restaurantss[i].image,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 5,
      ),
    );
  }
}
