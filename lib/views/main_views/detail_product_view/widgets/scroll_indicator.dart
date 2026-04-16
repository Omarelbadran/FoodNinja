import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ScrollIndicator extends StatelessWidget {
  const ScrollIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 5.h,
      decoration: BoxDecoration(
        color: Color(0xffFEAD1D).withValues(alpha: .15),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
