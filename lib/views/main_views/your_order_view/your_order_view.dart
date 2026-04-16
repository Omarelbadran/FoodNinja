import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/main_views/your_order_view/widgets/your_order_list.dart';
import 'package:food_ninja/widgets/custom_button.dart';

import '../../../constants.dart';
import '../../../widgets/filtering_icon.dart';
import '../../../widgets/notification_icon.dart';
import '../../../widgets/search_text_form_field.dart';
class YourOrderView extends StatelessWidget {
  const YourOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child:Image.asset('assets/images/Pattern.jpg' , fit: BoxFit.fill,), ),
          Positioned.fill(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * .1,),
                    Row(
                      children: [
                        Text('Find Your\nFavorite Food' ,
                          style: TextStyle(
                            fontSize: 31.sp,
                            fontFamily: kPrimaryFont,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: screenWidth * .15,),
                        NotificationIcon()
                      ],
                    ),
                    SizedBox(height: screenHeight * .02,),
                    //the search and filtering
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(child: SearchTextFormField()),
                        SizedBox(width: screenWidth * .03,),
                        FilteringIcon(
                            onTap:(){}
                        )
                      ],
                    ),
                    SizedBox(height: screenHeight * .03,),
                    Expanded(child: YourOrderList()),
                    CustomElevatedButton(onPressed: (){}, 
                        text: Text('Check out' ,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: kPrimaryFont
                        ),
                        ),
                        height: 45.h,
                        width: 300.w,
                    ),
                    SizedBox(height: screenHeight * .04,),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
