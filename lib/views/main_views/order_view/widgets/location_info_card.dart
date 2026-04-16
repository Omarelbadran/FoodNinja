import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/constants.dart';
class LocationInfoCard extends StatelessWidget {
  const LocationInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w , vertical: 12.h),
      width: 345.w,
      height: 85.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.r),
        boxShadow :[
          BoxShadow(
            color: Colors.grey.withValues(alpha: .25),
            blurRadius: .5,
            spreadRadius: .5,
            offset: Offset(.5, .5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Deliver to' ,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: kPrimaryFont,
                fontSize: 14.sp,
                color: Colors.black.withValues(alpha: .3),
              ),
              ),
              InkWell(
                onTap: (){},
                child: Text('Edit' ,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: kPrimaryFont,
                    fontSize: 14.sp,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * .007,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/images/Pin Logo.svg'),
              SizedBox(width: screenWidth *.03,),
              Expanded(
                child: Text('4517 Washington Ave. Manchester Kentucky 39495',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: kPrimaryFont,
                  fontSize: 15.sp,
                  color: Colors.black,
                ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
