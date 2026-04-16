import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/views/auth_views/sign_up_success_view.dart';
import 'package:food_ninja/widgets/custom_button.dart';
import '../../constants.dart';
import '../../widgets/custom_container.dart';

class SetLocationView extends StatelessWidget {
  const SetLocationView({super.key});

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
                  Text('Set Your Location' , style: TextStyle(
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
                  SizedBox(height: screenHeight * 0.03,),
                  CustomContainer(
                    width: 335.w,
                    height: 120.h,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: 15.r , horizontal: 12.r),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             SvgPicture.asset('assets/images/Pin Logo.svg'),
                             SizedBox(width: screenWidth * .03,),
                             Text('Your Location' , style: TextStyle(
                                 fontFamily: kPrimaryFont,
                                 color: Colors.black,
                                 fontSize: 15.sp,
                                 fontWeight: FontWeight.w500
                             ),
                             ),
                           ],
                         ),
                          Container(
                            width: 300.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withValues(alpha: .25),
                                  blurRadius: 0,          // softness of shadow
                                  spreadRadius: 0,
                                  offset: Offset(0, 0),   // 🔼 negative Y = shadow above
                                ),
                              ],
                              borderRadius: BorderRadius.circular(22.r),
                              color: Colors.white70.withValues(alpha: .75),
                            ),
                            child: Center(
                              child: Text('Set Location' , style: TextStyle(
                                  fontFamily: 'Rubik',
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w900
                              ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * .35,),
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
