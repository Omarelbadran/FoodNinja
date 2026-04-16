import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/main_views/set_your_location_view/widgets/search_bar.dart';
import 'package:food_ninja/views/main_views/set_your_location_view/widgets/your_location_card.dart';
class SetYourLocationView extends StatelessWidget {
  const SetYourLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50.h,
              left: 20.w,
              right: 20.w,
              child: LocationSearchBar(),
          ),
          Positioned(
            left: 20.w,
              right: 20.w,
              bottom: 20.h,
              child: YourLocationCard()
          )
        ],
      ),
    );
  }
}
