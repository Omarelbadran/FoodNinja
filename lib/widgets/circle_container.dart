import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CircleContainer extends StatelessWidget {
  final double radius;
  final String image;
  const CircleContainer({
    super.key, required this.radius, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(6.r),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage:
        AssetImage(image),
      ),
    );
  }
}
