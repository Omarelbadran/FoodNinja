import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/auth_views/sign_up_success_view.dart';
import 'package:food_ninja/widgets/custom_button.dart';
import '../../constants.dart';
import '../../widgets/custom_container.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/Pattern.jpg' , fit: BoxFit.fill,),
          ),
          Positioned.fill(
            top: 50.h,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Color(0xffF9A84D).withValues(alpha: .15),
                      ),
                      width: 40.w,
                      height: 35.h,
                      child: Icon(Icons.arrow_back_ios_new , color: Color(0xffDA6317),),
                    ),
                  ),
                  SizedBox(height: screenHeight * .02,),
                  Text('Enter 4-digit\nVerification code' , style: TextStyle(
                      fontFamily: kPrimaryFont,
                      color: Colors.black,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: screenHeight * .02,),
                  Text('Code send to +6282045**** . This code will\nexpired in 01:30' , style: TextStyle(
                      fontFamily: kPrimaryFont,
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400
                  ),
                  ),
                  SizedBox(height: screenHeight * 0.03,),
                  CustomContainer(
                    width: 335.w,
                    height: 90.h,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: 15.r , horizontal: 12.r),
                      child: OtpTextField(
                        textStyle: TextStyle(
                          fontSize: 33.sp,
                          color: Colors.black,
                          fontFamily: kPrimaryFont,
                          fontWeight: FontWeight.bold
                        ),
                        fieldWidth: screenWidth * .18,
                        numberOfFields: 4,
                        showFieldAsBox: false,
                        borderWidth: 0,
                        borderColor: Colors.transparent,
                        enabledBorderColor: Colors.transparent,
                        focusedBorderColor: Colors.transparent,
                        onCodeChanged: (String code) {
                        },
                        onSubmit: (String verificationCode) {

                        },
                      ),
                      ),
                    ),
                  SizedBox(height: screenHeight * .4,),
                  Align(
                    alignment: Alignment.center,
                    child: CustomElevatedButton(
                      width: 145.w,
                      height: 47.h,
                      onPressed: (){
                        Navigator.of(context).pushReplacement
                          (MaterialPageRoute(builder: (context) => SignUpSuccessView()),
                        );
                      }, text: Text('Next' , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: kPrimaryFont,
                      fontSize: 16.sp,
                    ),
                    ),
                    ),
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
