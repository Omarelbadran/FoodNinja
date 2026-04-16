import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/auth_views/reset_password_view.dart';
import 'package:food_ninja/widgets/custom_button.dart';
import '../../constants.dart';
import '../../widgets/custom_container.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
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
                        color: Color(0xffF9A84D).withValues(alpha: 0.2),
                      ),
                      width: 40.w,
                      height: 35.h,
                      child: Icon(Icons.arrow_back_ios_new , color: Color(0xffDA6317),),
                    ),
                  ),
                  SizedBox(height: screenHeight * .02,),
                  Text('Payment Method' , style: TextStyle(
                      fontFamily: kPrimaryFont,
                      color: Colors.black,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: screenHeight * .02,),
                  Text('This data will be displayed in your account\nprofile for security' , style: TextStyle(
                      fontFamily: kPrimaryFont,
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400
                  ),
                  ),
                  SizedBox(height: screenHeight * 0.02,),
                  CustomContainer(
                    width: 335.w,
                    height: 80.h,
                    child:  Row(
                      children: [
                        Image.asset('assets/images/Message.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Via sms:' , style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: kPrimaryFont,
                                fontSize: 16.sp,
                                color: Color(0xff828282)
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02,),
                  CustomContainer(
                    width: 335.w,
                    height: 80.h,
                    child: Row(
                      children: [
                        Image.asset('assets/images/Email.jpg'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Via email:' , style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: kPrimaryFont,
                              fontSize: 16.sp,
                              color: Color(0xff828282)
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * .3,),
                  Align(
                    alignment: Alignment.center,
                    child: CustomElevatedButton(
                      width: 145.w,
                      height: 47.h,
                      onPressed: (){
                        Navigator.of(context).pushReplacement
                          (MaterialPageRoute(builder: (context) => ResetPasswordView()),
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
