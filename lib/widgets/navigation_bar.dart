import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class FloatingNavigationBar extends StatelessWidget {
  const FloatingNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .25),
            blurRadius: .5,
            spreadRadius: .5,
            offset: Offset(.5, .5),
          )
        ]
      ),
      child: GNav(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        gap: 6,
          tabBackgroundColor: kPrimaryColor.withValues(alpha: .2),
          color: kPrimaryColor,
          activeColor: kPrimaryColor,
          haptic: true,
          tabBorderRadius: 22.r,
        rippleColor: Colors.grey,
        hoverColor: Colors.grey,
          tabs: [
            GButton(
              icon:Icons.home_filled,
              text: 'Home',
              textStyle: TextStyle(
                fontFamily: kPrimaryFont,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            GButton(
              icon:Icons.person,
              text: 'Profile',
              textStyle: TextStyle(
                  fontFamily: kPrimaryFont,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),
            ),
            GButton(
              icon:Icons.shopping_cart,
              text: 'Cart',
              textStyle: TextStyle(
                  fontFamily: kPrimaryFont,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),
            ),
            GButton(
              icon:Icons.mark_unread_chat_alt,
              text: 'Chat',
              textStyle: TextStyle(
                  fontFamily: kPrimaryFont,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),
            )
          ]
      ),
    );
  }
}
