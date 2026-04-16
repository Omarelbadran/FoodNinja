import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/widgets/custom_button.dart';

import '../confirm_order_view.dart';
class PriceInfoContainer extends StatelessWidget {
  const PriceInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w , vertical: 12.h),
      width: 345.w,
      height: 180.h,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(22.r),
        boxShadow :[
          BoxShadow(
            color: Colors.grey.withValues(alpha: .25),
            blurRadius: 0,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sub-Total' ,
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: kPrimaryFont,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
              ),
              Text('120 \$' ,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: kPrimaryFont,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * .002,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Delivery Charge' ,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: kPrimaryFont,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
              ),
              Text('10 \$' ,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: kPrimaryFont,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * .002,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Discount' ,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: kPrimaryFont,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
              ),
              Text('20 \$' ,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: kPrimaryFont,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * .03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total' ,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: kPrimaryFont,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              Text('110 \$' ,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: kPrimaryFont,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight *.01,),
          CustomElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ConfirmOrderView())
                );
              },
            backgroundColor: Colors.white,
              text: Text('Place My Order',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: kPrimaryFont,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
              ),
              ),
              height: 45.h,
              width: 345.w,
          ),
        ],
      ),
    );
  }
}
