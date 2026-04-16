import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BackIcon extends StatelessWidget {
  const BackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 35.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .15),
            spreadRadius: .5,
            blurRadius: .5,
            offset: Offset(.5, .5),
          ),
        ],
      ),
      child: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios_new_outlined ,
          color: Color(0xffDA6317),
          )
      ),
    );
  }
}
