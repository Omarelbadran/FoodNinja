import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';

import '../../widgets/circle_button.dart';
import '../../widgets/circle_container.dart';
class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/Pattern.jpg', fit: BoxFit.fill),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: screenHeight * .25,),
                CircleContainer(
                  radius: 75.r,
                  image: 'assets/images/User_1.png',
                ),
                SizedBox(height: screenHeight * .03,),
                 Text(
                  'Courtney Henry',
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: kPrimaryFont,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenHeight * .02,),
                Text(
                  'Ringing...',
                  style: TextStyle(
                    fontFamily: kPrimaryFont,
                    color: Colors.black.withValues(alpha: .3),
                    fontSize: 19.sp,
                  ),
                ),
                SizedBox(height: screenHeight * .2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleButton(
                      icon: Icons.volume_up,
                      bgColor: const Color(0xffE9F9F0),
                      iconColor: Colors.green,
                    ),

                    SizedBox(width: screenWidth * .05),

                    CircleButton(
                      icon: Icons.close,
                      bgColor: Colors.red,
                      iconColor: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
