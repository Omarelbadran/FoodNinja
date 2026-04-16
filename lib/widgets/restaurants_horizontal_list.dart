import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/models/restaurants_model.dart';
import 'package:food_ninja/widgets/restaurant_card.dart';
class RestaurantsHorizontalList extends StatelessWidget {
  final List<RestaurantsModel> restaurants;
  const RestaurantsHorizontalList({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: ListView.builder(
          itemCount: restaurants.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
            final r = restaurants[index];
            return RestaurantCard(restaurant: r);
      }
      ),
    );
  }
}
