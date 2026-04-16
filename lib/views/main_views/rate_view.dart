import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/widgets/circle_container.dart';
import 'package:food_ninja/widgets/custom_button.dart';
class RateView extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const RateView({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/Pattern.jpg', fit: BoxFit.fill),
          ),
          Positioned.fill(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24.r),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight * .2,),
                      CircleContainer(radius: 75.r, image: image),
                      SizedBox(height: screenHeight *.03 ,),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: kPrimaryFont,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: screenHeight * .01),
                      Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                          color: Colors.black.withValues(alpha: .3),
                          fontSize: 14.sp,
                          fontFamily: kPrimaryFont,
                        ),
                      ),
                      SizedBox(height: screenHeight * .04,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          5,
                              (index) =>  Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            child: Icon(
                              Icons.star_purple500_sharp,
                              color: Color(0xffFEAD1D),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * .15,),
                      TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          hintText: 'Leave feedback',
                          prefixIcon: Icon(Icons.edit_calendar_sharp, color: Colors.green),
                        ),
                      ),
                      SizedBox(height: screenHeight * .02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomElevatedButton(
                              onPressed: (){}, 
                              text: Text(
                                'Submit' , style: TextStyle(
                                fontFamily: kPrimaryFont,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                              ),
                              height: 45.h,
                              width: 210.w,
                          ),
                          CustomElevatedButton(
                              onPressed: (){},
                              text: Text('Skip' , style: TextStyle(
                                  fontFamily: kPrimaryFont,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor
                              ),),
                              height: 45.h,
                              width: 90.w,
                            backgroundColor: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
