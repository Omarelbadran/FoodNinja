import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../models/menu_model.dart';
class MenuCard extends StatelessWidget {
  final MenusModel menu ;
  const MenuCard({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    final double screenWidth= MediaQuery.of(context).size.width;
    return  Container(
      width: 300.w,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      margin:  EdgeInsets.symmetric(
        vertical: 12.h,
        horizontal: 8.w,
      ),
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
      child: Row(
        children: [
          Image.asset(menu.logo ,width: 60.w, height: 60.h,),
          SizedBox(width: screenWidth * .02,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(menu.name ,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontFamily: kPrimaryFont,
                  ),
                ),
                Text(
                  menu.resName , style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black.withValues(alpha: .3),
                  fontFamily: kPrimaryFont,
                ),)
              ],
            ),
          ),
          SizedBox(width: screenWidth * .08 ,),
          Text(
            "\$${menu.price} ",
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.sp,
              color: Color(0xffFEAD1D),
              fontFamily: kPrimaryFont,
            ),
          ),
        ],
      ),
    );
  }
}
