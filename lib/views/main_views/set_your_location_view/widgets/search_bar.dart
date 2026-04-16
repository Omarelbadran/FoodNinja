import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LocationSearchBar extends StatelessWidget {
  const LocationSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w , vertical: 12.h),
      height: 60.h,
      decoration: BoxDecoration(
        color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withValues(alpha: .15),
              spreadRadius: .5,
            blurRadius: .5,
            offset: Offset(0.5, .5)
          )
        ]
      ),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white,
            hintText: 'find your location',
                prefixIcon: Icon(Icons.search_rounded , color: Color(0xffDA6317), size: 30.r,),
            hintStyle: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xffDA6317).withValues(alpha: .5),
            )
          ),
        ),
      ),
    );
  }
}
