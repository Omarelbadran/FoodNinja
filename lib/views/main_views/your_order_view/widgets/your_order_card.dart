import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/views/main_views/your_order_view/widgets/process_button.dart';
class YourOrderCard extends StatelessWidget {
  const YourOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth= MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w ,vertical: 8.h ),
      width: 345.w,
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withValues(alpha: .25),
              spreadRadius: .5,
            blurRadius: .0,
            offset: Offset(.0, .0)
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset('assets/images/Menu_Photo.png' , width: 62.w, height: 75.h,),
          SizedBox(width: screenWidth * .03,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Spacy fresh crab' ,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontFamily: kPrimaryFont,
                fontSize: 15.sp,
              ),
              ),
              Text('Waroenk kita' ,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withValues(alpha: .2),
                  fontFamily: kPrimaryFont,
                  fontSize: 14.sp,
                ),
              ),
              Text('\$ 35' ,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                  fontFamily: kPrimaryFont,
                  fontSize: 19.sp,
                ),
              ),
            ],
          ),
          ProcessButton(
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
