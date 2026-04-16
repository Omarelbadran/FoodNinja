import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
class ShowRating extends StatelessWidget {
  const ShowRating({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Icon(Icons.star_half ,size: 20.w , color: kPrimaryColor,),
        SizedBox(width: screenWidth * .01,),
        Text(
          '4,8 Rating' ,
        style: TextStyle(
          fontSize: 14.sp,
          fontFamily: kPrimaryFont,
          fontWeight: FontWeight.w400,
          color: Colors.black.withValues(alpha: .3),
        ),
        )
      ],
    );
  }
}
