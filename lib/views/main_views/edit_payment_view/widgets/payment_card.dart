import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
class PaymentCard extends StatelessWidget {
  final String? image;
  final String? paymentNumber;
  final bool isActive;

  const PaymentCard({
    super.key,
    this.image,
    this.paymentNumber,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8.w),
      width: 345.w,
      height: 65.h,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .25),
            blurRadius: isActive ? .5 : 0,
            spreadRadius: isActive ? .5 : 0,
            offset: Offset(isActive ? .5 : 0 , isActive ? .5 : 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/paypal.png' , width: 120.w, height: 65.h,),
          Text('2121 6352 8465 ****' ,
          style: TextStyle(
            fontSize: 14.sp,
            fontFamily: kPrimaryFont,
            fontWeight: FontWeight.w400,
            color: isActive ? Colors.black : Colors.black.withValues(alpha: .2),
          ),
          )
        ],
      ),
    );
  }
}
