import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class FilteringIcon extends StatelessWidget {
  final void Function()? onTap;
  const FilteringIcon({
    super.key, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(13.r),
        width: 45.w,
        height: 38.h,
        decoration: BoxDecoration(
          color: Color(0xffF9A84D).withValues(alpha: .15),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: .25),
              blurRadius: 10,
              spreadRadius: 0,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: SvgPicture.asset('assets/images/Filter.svg'),
      ),
    );
  }
}