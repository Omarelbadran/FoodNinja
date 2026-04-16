import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/constants.dart';
class NotificationCard extends StatelessWidget {

  final String? image;
  final String? title;
  final String? time;

  const NotificationCard({
    super.key,
     this.image,
     this.title,
     this.time,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w ),
      width: 345.w,
      height: 70.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .25),
            blurRadius: 10,
            spreadRadius: 4,
            offset: Offset(5, 5),
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset('assets/images/checked.svg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your order has been taken by\nthe driver' ,
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.black,
                fontFamily: kPrimaryFont,
                fontWeight: FontWeight.w600,
              ),
              ),
              Text('Recently' ,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black.withValues(alpha: .3),
                  fontFamily: kPrimaryFont,
                  fontWeight: FontWeight.w400,
                ),

              ),

            ],
          )
        ],
      ),
    );
  }
}
