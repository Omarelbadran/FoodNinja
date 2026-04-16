import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/auth_views/upload_photo_preview.dart';
import 'package:food_ninja/widgets/custom_button.dart';
import '../../constants.dart';
import '../../widgets/custom_container.dart';

class UploadPhotoView extends StatelessWidget {
  const UploadPhotoView({super.key});

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
                  CustomContainer(
                    width: 335.w,
                    height: 120.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/Gallery.jpg'),
                        SizedBox(height: screenHeight * 0.02,),
                        Text('From Gallery' , style: TextStyle(
                            fontFamily: kPrimaryFont,
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02,),
                  CustomContainer(
                    width: 335.w,
                    height: 120.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/camera.jpg'),
                        SizedBox(height: screenHeight * 0.02,),
                        Text('Take Photo' , style: TextStyle(
                            fontFamily: kPrimaryFont,
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
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
                          (MaterialPageRoute(builder: (context) => UploadPhotoPreviewView()),
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
