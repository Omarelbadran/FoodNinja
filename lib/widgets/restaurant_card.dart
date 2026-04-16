import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/models/restaurants_model.dart';
class RestaurantCard extends StatelessWidget {
  final RestaurantsModel restaurant ;
  const RestaurantCard({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return  Container(
      margin:  EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 8,
      ),
      width: 147.w,
      height: 150.h,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(22.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: .25),
              blurRadius: .8,
              spreadRadius: .8,
              offset: Offset(.5, .5),
            ),
          ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(restaurant.logo , height: 70.h,),
          SizedBox(height: screenHeight * .015 ,),
          Text(restaurant.name ,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
              color: Colors.black,
              fontFamily: kPrimaryFont,
            ),
          ),
          SizedBox(height: screenHeight * .005 ,),
          Text(
        "${restaurant.time} Mins",
        style: const TextStyle(color: Colors.grey),
      ),
        ],
      ),
    );
  }
}
