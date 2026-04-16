
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.controller,
    this.autofillHints,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.readOnly = false,
    this.onTap,
  });

  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Iterable<String>? autofillHints;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool readOnly;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      autofillHints: autofillHints,
      obscureText: obscureText!,
      onTap: onTap,
      readOnly: readOnly,
      style: const TextStyle(color: Color(0xffF8FAFC)),
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onFieldSubmitted: (value) {},
      controller: controller,
      decoration: InputDecoration(

        contentPadding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 17.h),
        isDense: false,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          fontFamily: kPrimaryFont,
          color:  Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
            width: 2.w,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        errorStyle: const TextStyle(
          fontSize: 14,
          fontFamily: kPrimaryFont,
          decorationThickness: 10,
          fontWeight: FontWeight.w400,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 3.w,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
    );
  }
}
