import 'package:flutter/material.dart';
import 'package:food_ninja/models/restaurants_model.dart';
import 'package:food_ninja/widgets/restaurant_card.dart';

class VerticalRestaurantsList extends StatelessWidget {
  final List<RestaurantsModel> restaurants;
  const VerticalRestaurantsList({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: restaurants.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
        ),
      itemBuilder: (context, index) {
        return RestaurantCard(restaurant: restaurants[index]);
      },
    );
  }
}
