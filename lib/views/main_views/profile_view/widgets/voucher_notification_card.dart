import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/constants.dart';
class VoucherNotificationCard extends StatelessWidget {
  const VoucherNotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w , vertical: 10.h),
      width: 320.w,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .2),
            spreadRadius: .5,
            blurRadius: .5,
            offset: Offset(.5, .5)
          ),
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/Voucher_Icon.svg' , width: 40.w,height: 50.h,),
          SizedBox(width: screenWidth * .05,),
          Text('You Have 3 Voucher' ,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15.sp,
            fontFamily: kPrimaryFont
          ),
          )
        ],
      ),
    );
  }
}
