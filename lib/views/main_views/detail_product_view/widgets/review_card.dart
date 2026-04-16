import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/views/main_views/detail_product_view/widgets/rating_icon.dart';
class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w , vertical: 8.h),
      width: 320.w,
      height: 100.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .25),
            blurRadius: .5,
            spreadRadius: .5,
            offset: Offset(.5, .5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/review_photo.png' , width: 60.w),
              SizedBox(width: screenWidth * .02,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight *.005,),
                 Text(
                   'Dianne Russell' ,
                 style: TextStyle(
                   fontSize: 15.sp,
                   fontFamily: kPrimaryFont,
                   fontWeight: FontWeight.bold,
                 ),
                 ) ,
                  Text(
                    '12 April 2021' ,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withValues(alpha: .3)
                    ),
                  ),
                ],
              ),
              SizedBox(width: screenWidth * .2,),
              RatingIcon(),
            ],
          ),
          Text(
            'This Is great, So delicious! You Must\nHere, With Your family . . ' ,
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: kPrimaryFont,
              fontWeight: FontWeight.w400,
            ),
          ) ,
        ],
      ),
    );
  }
}

