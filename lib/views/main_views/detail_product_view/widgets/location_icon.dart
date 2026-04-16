import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
class LocationIcon extends StatelessWidget {
  const LocationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.w,
      height: 35.h,
      decoration: BoxDecoration(
        color: kPrimaryColor.withValues(alpha: .15),
        shape: BoxShape.circle
      ),
      child: Center(
        child: Icon(Icons.location_on , color: kPrimaryColor,),
      ),
    );
  }
}
