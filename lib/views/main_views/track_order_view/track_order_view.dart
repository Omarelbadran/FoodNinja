import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/main_views/track_order_view/widgets/back_icon.dart';
import 'package:food_ninja/views/main_views/track_order_view/widgets/track_order_card.dart';
class TrackOrderView extends StatelessWidget {
  const TrackOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50.h,
              left: 20.w,
              child: BackIcon()
          ),
          Positioned(
            bottom: 20.h,
              left: 20.w,
              right: 20.w,
              child: TrackOrderCard()
          )
        ],
      ),
    );
  }
}
