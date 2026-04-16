import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, required this.width, required this.height, required this.child,
  });
  final double width;
  final double height;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.r),
      width:width,
      height:height,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .25),
            blurRadius: 10,
            spreadRadius: 4,
            offset: Offset(5, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(22.r),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
