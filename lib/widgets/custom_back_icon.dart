import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomBackIcon extends StatelessWidget {
  const CustomBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Color(0xffF9A84D).withValues(alpha: 0.2),
      ),
      width: 40.w,
      height: 35.h,
      child: Icon(Icons.arrow_back_ios_new , color: Color(0xffDA6317),),
    );
  }
}
