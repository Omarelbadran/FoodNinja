import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/main_views/profile_view/widgets/buy_again_button.dart';

import '../../../../constants.dart';
class FavouriteOrderCard extends StatelessWidget {
  const FavouriteOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 310.w,
      height: 85.h,
      margin:  EdgeInsets.only(bottom: 4.h),
      padding:  EdgeInsets.symmetric(horizontal: 8.w , vertical: 8.h),
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
      child: Row(
        children: [
          Image.asset('assets/images/order_photo.png' , width: 65.w, height: 65.h,),
          SizedBox(width: screenWidth * .02, ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Spacy fresh crab',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: kPrimaryFont,
                  color: Colors.black,
                  fontSize: 15.sp,
                ),
              ),
              Text('Waroenk kita',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: kPrimaryFont,
                  color: Colors.black.withValues(alpha: .3),
                  fontSize: 14.sp,
                ),
              ),
              Text('\$ 35',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: kPrimaryFont,
                  color:kPrimaryColor,
                  fontSize: 19.sp,
                ),
              ),
            ],
          ),
          SizedBox(width: screenWidth * .07,),
          BuyAgainButton(
            onPressed: (){},
          )
        ],
      ),
    );
  }
}

