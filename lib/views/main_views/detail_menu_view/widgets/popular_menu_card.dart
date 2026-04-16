import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants.dart';
class PopularMenuCard extends StatelessWidget {
  const PopularMenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.w , vertical: 6.h),
      width: 150.w,
      height: 170.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .2),
            blurRadius: .5,
            spreadRadius: .5,
            offset: Offset(.5, .5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/image_34.png'),
          SizedBox(height: screenHeight * .02,),
          Text('Spacy fresh crab' ,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: kPrimaryFont,
              fontSize: 15.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: screenHeight * .02,),
          Text('12 \$' ,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: kPrimaryFont,
              fontSize: 13.sp,
              color: Colors.black.withValues(alpha: .3),
            ),
          ),

        ],
      ),
    );
  }
}
