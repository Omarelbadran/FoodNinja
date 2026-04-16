import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/views/auth_views/second_started_screen_view.dart';
import 'package:food_ninja/widgets/custom_button.dart';
class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/Illustartion.png' , width: 410.w , height : 390.h),
          Text('Find your Comfort \n \t\t\t\t\t\t\tFood here' ,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.sp,
            color: Colors.black,
            fontFamily: kPrimaryFont,
          ),
          ),
          SizedBox(height: screenHeight * .02,),
          Text(
              'Here You Can find a chef or dish for every \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t taste and color. Enjoy!' ,
          style: TextStyle(
            fontSize: 12.sp,
            fontFamily: kPrimaryFont,
            fontWeight: FontWeight.w400
          ),
          ),
          SizedBox(height: screenHeight * .03,),
          CustomElevatedButton(
              width: 145.w,
              height: 47.h,
              onPressed: (){
                Navigator.of(context).pushReplacement
                  (MaterialPageRoute(builder: (context) => SecondGetStartedView()),
                );
              }, text: Text('Next' , style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: kPrimaryFont,
            fontSize: 16.sp,
          ),
          ),
          ),
        ],
      ),
    );
  }
}
