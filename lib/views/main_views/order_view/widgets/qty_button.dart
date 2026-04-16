import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final bool isPrimary;
  final Color backGroundColor;
  final Color? iconColor;


  const QtyButton({
    super.key,
    required this.icon,
    this.onTap,
    this.isPrimary = false,
    required this.backGroundColor,
    this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onTap ,
        icon: Icon(
          color: iconColor,
          icon , size: 12.r,),
      style: IconButton.styleFrom(
        backgroundColor:backGroundColor,
        minimumSize: Size(12.w, 12.h),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
