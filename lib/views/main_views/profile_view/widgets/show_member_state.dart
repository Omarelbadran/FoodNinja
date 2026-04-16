import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
class ShowMemberState extends StatelessWidget {
  const ShowMemberState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: Color(0xffFEAD1D).withValues(alpha: .15),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Center(
        child: Text('Member Gold' ,
          style: TextStyle(
            fontSize: 12.sp,
            color: Color(0xffFEAD1D),
            fontFamily: kPrimaryFont,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
