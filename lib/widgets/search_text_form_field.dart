import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search , size: 30.r, color:Color(0xffDA6317) ,),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        border: InputBorder.none,
        hintText: 'What do you want to order?',
        filled: true,
        fillColor: Color(0xffF9A84D).withValues(alpha: .15),
        hintStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
          color:  Color(0xffDA6317).withValues(alpha: .6),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(12.r),
      ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(12.r),
        )
    )
    );
  }
}
