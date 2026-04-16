import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants.dart';
class BuyAgainButton extends StatelessWidget {
  final void Function()? onPressed;
  const BuyAgainButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(90.w,0.h),
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(22.r)
            )
        ),
        onPressed: onPressed,
        child: Text('Buy Again' ,
          style:TextStyle(
              fontSize: 10.sp,
              fontFamily: kPrimaryFont,
              color: Colors.white
          ),
        )
    );
  }
}