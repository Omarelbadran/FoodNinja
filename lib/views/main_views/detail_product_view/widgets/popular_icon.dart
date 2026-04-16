import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
class PopularIcon extends StatelessWidget {
  const PopularIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: kPrimaryColor.withValues(alpha: .15),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Center(
        child: Text('Popular' ,
        style: TextStyle(
          fontSize: 12.sp,
          color: kPrimaryColor,
          fontFamily: kPrimaryFont,
          fontWeight: FontWeight.w600,
        ),
        ),
      ),
    );
  }
}
