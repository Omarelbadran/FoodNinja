import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
class VoucherCard extends StatelessWidget {
  final Color? backgroundColor;
  final String? title;
  final Color? buttonTextColor;

  const VoucherCard({
    super.key,
    this.backgroundColor,
    this.title,
    this.buttonTextColor,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: 325.w,
      height: 122.h,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Padding(
            padding:  EdgeInsets.only(top : 30.h),
            child: Image.asset('assets/images/voucher_photo.png' , width: 160.w, height:122.h,),
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Special Deal For\nOctober' ,
              style: TextStyle(
                fontFamily: kPrimaryFont,
                fontSize: 17.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: screenHeight *.01,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r)
                  )
                ),
                  onPressed: (){}, 
                  child:Text('Order Now' ,
                  style: TextStyle(
                    fontFamily: kPrimaryFont,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp
                  ),
                  ),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
