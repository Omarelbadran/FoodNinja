import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/auth_views/set_location_view.dart';
import 'package:food_ninja/widgets/custom_button.dart';
import '../../constants.dart';
class UploadPhotoPreviewView extends StatelessWidget {
  const UploadPhotoPreviewView({super.key});

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
                        color: Color(0xffF9A84D).withValues(alpha: .15),
                      ),
                      width: 40.w,
                      height: 35.h,
                      child: Icon(Icons.arrow_back_ios_new , color: Color(0xffDA6317),),
                    ),
                  ),
                  SizedBox(height: screenHeight * .02,),
                  Text('Upload Your Photo Profile' , style: TextStyle(
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
                  Center(
                    child: SizedBox(
                      width: 240.w,
                      height: 240.h,
                      child: Stack(
                        children: [
                          Positioned.fill(
                              child: Image.asset('assets/images/Photo.jpg' , fit: BoxFit.fill,),
                          ),
                          Positioned(
                            top: 18.h,
                            right: 12.w,
                            child: Container(
                              width: 35.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withValues(alpha: 0.4), // circle color
                              ),
                              child: Icon(
                                Icons.close,
                                color: Colors.white, // X color
                                size: 24.r,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * .15,),
                  Align(
                    alignment: Alignment.center,
                    child: CustomElevatedButton(
                      width: 145.w,
                      height: 47.h,
                      onPressed: (){
                        Navigator.of(context).pushReplacement
                          (MaterialPageRoute(builder: (context) => SetLocationView()),
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
