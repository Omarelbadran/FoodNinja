import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/constants.dart';
class TrackOrderCard extends StatelessWidget {
  const TrackOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 340.w,
      height: 200.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .15),
            spreadRadius: .5,
            blurRadius: .5,
            offset: Offset(.5, .5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(22.r),
                  child: Image.asset('assets/images/Pattern.jpg' , fit: BoxFit.fill,)),
          ),
          Positioned.fill(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Track Orders' ,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: kPrimaryFont,
                ),
                ),
                SizedBox(height: screenHeight *.03,),
                Container(
                  padding: EdgeInsets.only(left: 12.w),
                  width: 328.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: .15),
                        spreadRadius: .5,
                        blurRadius: .5,
                        offset: Offset(.5, .5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/Photo_Profile_og.png' , width: 60.w,height: 60.h,),
                      SizedBox(width: screenWidth * .03),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Mr Kemplas' ,
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: kPrimaryFont,
                          ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/images/Icon_maps.svg' ,width: 10.w,height: 10.h,),
                              SizedBox(width: screenWidth * .01,),
                              Text('25 minutes on the way',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withValues(alpha: .3),
                                fontFamily: kPrimaryFont,
                              ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * .02,),
                Row(
                  children: [
                    Container(
                      width: 215.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withValues(alpha: .15),
                            spreadRadius: .5,
                            blurRadius: .5,
                            offset: Offset(.5, .5),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call , color: kPrimaryColor,),
                          SizedBox(width: screenWidth *.02,),
                          Text('Call' ,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: kPrimaryFont,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                          ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: screenWidth * .02,),
                    Container(
                      width: 70.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(22.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withValues(alpha: .15),
                            spreadRadius: .5,
                            blurRadius: .5,
                            offset: Offset(.5, .5),
                          ),
                        ],
                      ),
                      child: Icon(Icons.email_rounded , color: Colors.white,),
                    )
                  ],
                ),
              ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
