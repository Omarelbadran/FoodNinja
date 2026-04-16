import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
class ChoiceItem extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback? onTap;
  final double? width;
  final double?  height;
  const ChoiceItem({
    super.key,
    required this.label,
    required this.selected,
    this.onTap,
    this.width,
    this.height
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 44.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xffFEF3E7),
          borderRadius: BorderRadius.circular(16),
          border: selected
              ? Border.all(
            color: const Color(0xffFEAD1D),
            width: 1.5,
          )
              : null,
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontFamily: kPrimaryFont,
            color: Color(0xffDA6317),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
