import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/auth_views/details_view.dart';
import 'package:food_ninja/widgets/custom_button.dart';
import 'package:food_ninja/widgets/custom_text_field.dart';
import '../../constants.dart';
class SignUpView extends StatefulWidget {
  const SignUpView({super.key});


  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool? isChecked = false ;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth= MediaQuery.of(context).size.width;
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
              padding:  EdgeInsets.symmetric(horizontal: 25.r),
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
                  Text('Sign Up For Free' , style: TextStyle(
                      fontFamily: kPrimaryFont,
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: screenHeight * .04,),
                  CustomTextFromField(hintText: 'Username',
                    prefixIcon: Icon(Icons.person_rounded , color: kPrimaryColor,),
                  ),
                  SizedBox(height: screenHeight * .01,),
                  CustomTextFromField(hintText: 'Email',
                    prefixIcon: Icon(Icons.email_rounded , color: kPrimaryColor,),
                  ),
                  SizedBox(height: screenHeight * .01,),
                  CustomTextFromField(
                    suffixIcon: Icon(Icons.visibility_outlined),
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock , color: kPrimaryColor,),
                  ),
                  SizedBox(height: screenHeight * .02,),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Transform.scale(
                          scale: 1.4,
                          child: Checkbox(
                            activeColor: kPrimaryColor, 
                            checkColor: Colors.white,
                            shape: const CircleBorder(),
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            visualDensity: VisualDensity.compact,
                            side: const BorderSide(
                              color: Colors.grey,
                              width: .5, // change thickness here
                            ),
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              },
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * .01,),
                      Text('Keep Me Signed In' , style: TextStyle(
                          fontFamily: kPrimaryFont,
                          color: kPrimaryColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400
                      ),)
                    ],
                  ),
                  SizedBox(height: screenHeight * .01,),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Transform.scale(
                          scale: 1.4,
                          child: Checkbox(
                            activeColor: kPrimaryColor,
                            checkColor: Colors.white,
                            shape: const CircleBorder(),
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            visualDensity: VisualDensity.compact,
                            side: const BorderSide(
                              color: Colors.grey,
                              width: .5, // change thickness here
                            ),
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              },
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * .01,),
                      Text('Email Me About Special Pricing' , style: TextStyle(
                          fontFamily: kPrimaryFont,
                          color: kPrimaryColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400
                      ),)
                    ],
                  ),
                  SizedBox(height: screenHeight * .05,),
                  CustomElevatedButton(
                    width: 175.w,
                    height: 47.h,
                    onPressed: (){
                      Navigator.of(context).pushReplacement
                        (MaterialPageRoute(builder: (context) => DetailsView()),
                      );
                    }, text: Text('Create Account' , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: kPrimaryFont,
                    fontSize: 16.sp,
                  ),
                  ),
                  ),
                  SizedBox(height: screenHeight * .02,),
                  Text('already have an account?' , style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff53E88B), // optional
                      decorationThickness: 2,
                      fontFamily: kPrimaryFont,
                      color: Color(0xff53E88B),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold
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
