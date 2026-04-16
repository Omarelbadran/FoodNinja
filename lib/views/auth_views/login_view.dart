import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/auth_views/forget_password_view.dart';
import 'package:food_ninja/widgets/custom_button.dart';
import 'package:food_ninja/widgets/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child:Image.asset('assets/images/Pattern.jpg' ,
              fit: BoxFit.fill,
              ),
          ),
          Positioned.fill(
            top: 50.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                        children: [
              Image.asset(kPrimaryLogo ),
              Text(
                'FoodNinja' ,
                style: TextStyle(
                    fontFamily: 'Viga',
                    color: kPrimaryColor,
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w400
                ),
              ),
              Text('Deliver Favorite Food' ,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: screenHeight * .07,),
              Text('Login To Your Account' , style: TextStyle(
                  fontFamily: kPrimaryFont,
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold
              ),
              ),
                          SizedBox(height: screenHeight * .04,),
              CustomTextFromField(hintText: 'Email',
                prefixIcon: Icon(Icons.email_rounded , color: kPrimaryColor,),
              ),
                          SizedBox(height: screenHeight * .02,),
                          CustomTextFromField(hintText: 'Password',
                            prefixIcon: Icon(Icons.lock , color: kPrimaryColor,),
                          ),
                          SizedBox(height: screenHeight * .02,),
                          Text('Or Continue With' , style: TextStyle(
                              fontFamily: kPrimaryFont,
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                          SizedBox(height: screenHeight * .02,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 12.r),
                                width : 145.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                    color: Colors.grey
                                  )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset('assets/images/facebook.svg'),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top: 4.r),
                                      child: Text('Facebook' , style: TextStyle(
                                          fontFamily: kPrimaryFont,
                                          color: Colors.black,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 12.r),
                                width : 145.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    border: Border.all(
                                        color: Colors.grey
                                    )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset('assets/images/google_icon_1.svg'),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top: 4.r),
                                      child: Text('Google' , style: TextStyle(
                                          fontFamily: kPrimaryFont,
                                          color: Colors.black,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: screenHeight * .02,),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) =>ForgetPasswordView()),
                              );
                            },
                            child: Text('Forget Your Password?', style: TextStyle(
                                fontFamily: kPrimaryFont,
                                color: kPrimaryColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                          SizedBox(height: screenHeight * .05,),
                          CustomElevatedButton(
                            width: 145.w,
                            height: 47.h,
                            onPressed: (){
                              Navigator.of(context).pushReplacement
                                (MaterialPageRoute(builder: (context) => LoginView()),
                              );
                            }, text: Text('Login' , style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: kPrimaryFont,
                            fontSize: 16.sp,
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
