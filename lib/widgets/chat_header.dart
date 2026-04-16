import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/widgets/custom_container.dart';

import '../constants.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    bool isOnline = true;
    final double screenWidth = MediaQuery.of(context).size.width;
    return CustomContainer(
      width: 320.w,
      height: 70.h,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12.r),
            child: Image.asset('assets/images/Photo_Profile.jpg'),
          ),
          SizedBox(width: screenWidth * .04),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dianne Russell',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontFamily: kPrimaryFont,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 8.w,
                    height: 8.h,
                    decoration: BoxDecoration(
                      color: isOnline ? Colors.green : Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: screenWidth * .009,),
                  Text(
                    'Online',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade500,
                      fontFamily: kPrimaryFont,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
            width: 40.w,
            height: 40.h,
            padding: EdgeInsets.symmetric(vertical: 4.h , horizontal: 4.w),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              shape: BoxShape.circle,
            ),
            child: Center(child: Icon(Icons.call, color: kPrimaryColor)),
          ),
        ],
      ),
    );
  }
}
