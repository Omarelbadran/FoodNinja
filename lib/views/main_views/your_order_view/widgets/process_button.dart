import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
class ProcessButton extends StatelessWidget {
  final void Function()? onPressed;
  const ProcessButton({super.key, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(80.w,0.h),
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(22.r)
        )
      ),
        onPressed: onPressed,
        child: Text('process' ,
          style:TextStyle(
            fontSize: 10.sp,
            fontFamily: kPrimaryFont,
            color: Colors.white
          ),
        )
    );
  }
}
