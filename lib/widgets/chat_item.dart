import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';

import 'custom_container.dart';
class ChatItem extends StatelessWidget {
  final String name;
  final String lastMessage;
  final String time;
  final String image;
  final bool isUnread;
  const ChatItem({super.key,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.image,
     this.isUnread =false,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return CustomContainer(
        width: 350.w,
        height: 60.h,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                image,
                width: 42.w,
                height: 42.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: screenWidth * .02,),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: kPrimaryFont,
                      ),
                    ),
                    Text(
                      lastMessage,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3B3B3B),
                        fontFamily: kPrimaryFont,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
            ),
            SizedBox(width: screenWidth * .04,),
            Text(
              time,
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey.shade500,
              ),
            ),
          ],
        )
    );
  }
}
