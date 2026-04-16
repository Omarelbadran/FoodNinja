import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/constants.dart';
class LocationCard extends StatelessWidget {
  final String? title;
  final String? address;
  final bool showSetLocation;

  const LocationCard({
    super.key,
    this.title,
    this.address,
    this.showSetLocation = false,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.only(left: 12.w ,right: 8.w , top: 12.h),
      width: 345.w,
      height: showSetLocation ? 115.h : 90.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
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
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('$title', style: TextStyle(
              fontFamily: kPrimaryFont,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black.withValues(alpha: .2),
            ),
            ),
          ),

          SizedBox(height: screenHeight * .01),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/images/Pin Logo.svg' , width: 25.w, height: 25.h,),
               SizedBox(width: screenWidth * .03),
              Expanded(
                child: Text(
                  maxLines: 2,
                  '$address',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontFamily: kPrimaryFont,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withValues(alpha: .2),
                  ),
                ),
              ),
            ],
          ),
          if (showSetLocation)...[
            SizedBox(height: screenHeight * .02),
            Text(
              'set location',
              style: TextStyle(
                  fontFamily: kPrimaryFont,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor),
            ),
          ]
        ],
      ),
    );
  }
}
