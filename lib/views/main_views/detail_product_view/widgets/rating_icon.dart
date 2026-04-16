import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
class RatingIcon extends StatelessWidget {
  const RatingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: kPrimaryColor.withValues(alpha: .15),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star ,size: 20.r, color: kPrimaryColor,),
          Text('5' ,
            style: TextStyle(
              fontSize: 15.sp,
              color: kPrimaryColor,
              fontFamily: kPrimaryFont,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
