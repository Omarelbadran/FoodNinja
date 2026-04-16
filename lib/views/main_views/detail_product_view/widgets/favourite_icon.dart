import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.w,
      height: 35.h,
      decoration: BoxDecoration(
        color: Colors.red.withValues(alpha: .15),
        shape: BoxShape.circle
      ),
      child: Center(
        child: Icon(Icons.favorite , color: Colors.red,),
      ),
    );
  }
}
