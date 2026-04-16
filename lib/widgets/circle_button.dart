import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CircleButton extends StatelessWidget {
  final IconData icon;
  final Color bgColor;
  final Color iconColor;
  const CircleButton({super.key,
    required this.icon,
    required this.bgColor,
    required this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72.w,
      height: 72.h,
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: iconColor, size: 28.r),
    );
  }
}
