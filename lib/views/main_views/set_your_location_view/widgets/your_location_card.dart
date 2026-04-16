import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/widgets/custom_button.dart';
class YourLocationCard extends StatelessWidget {
  const YourLocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      width: 320.w,
      height: 180.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withValues(alpha: .15),
            spreadRadius: .5,
            blurRadius: .5,
            offset: Offset(.5, .5)
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your Location' ,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            fontFamily: kPrimaryFont,
            color: Colors.black.withValues(alpha: .3),
          ),
          ),
          SizedBox(height: screenHeight * .015,),
          Row(
            children: [
              SvgPicture.asset('assets/images/Pin Logo.svg' , width: 30.w,height: 30.h,),
              SizedBox(width: screenWidth * .03,),
              Expanded(
                child: Text(
                  maxLines: 2,
                  '4517 Washington Ave. Manchester, Kentucky 39495',
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontFamily: kPrimaryFont,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * .055,),
          CustomElevatedButton(
              onPressed: (){},
              text: Text('Set Location' ,
              style: TextStyle(
                fontFamily: kPrimaryFont,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 14.sp
              ),
              ),
              height: 50.h,
              width: 320.w
          )
        ],
      ),
    );
  }
}
