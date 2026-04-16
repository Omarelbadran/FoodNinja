import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/views/auth_views/login_view.dart';
import 'package:food_ninja/widgets/custom_button.dart';
class SecondGetStartedView extends StatelessWidget {
  const SecondGetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/Illustration_2.png' ,width: 390.w , height: 390.h,),
          Text('Food Ninja is Where Your\n\t\t\t\t Comfort Food Lives' ,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.sp,
              color: Colors.black,
              fontFamily: kPrimaryFont,
            ),
          ),
          SizedBox(height: screenHeight * .02,),
          Text(
            'Enjoy a fast and smooth food delivery at \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t your doorstep' ,
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
                (MaterialPageRoute(builder: (context) => LoginView()),
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
