import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/views/main_views/notifications_view/widgets/notification_list.dart';
import 'package:food_ninja/widgets/custom_back_icon.dart';
class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/Pattern.jpg', fit: BoxFit.fill),
          ),
          Positioned.fill(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * .08,),
                  CustomBackIcon(),
                  SizedBox(height: screenHeight * .02,),
                  Text('Notifications' ,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      fontFamily: kPrimaryFont,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(child: NotificationList()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
