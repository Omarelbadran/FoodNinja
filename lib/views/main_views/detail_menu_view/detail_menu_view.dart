import 'package:flutter/material.dart';
import 'package:food_ninja/views/main_views/detail_menu_view/widgets/detail_menu_bottom_sheet.dart';

class DetailMenuView extends StatelessWidget {
  const DetailMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/Photo_Restaurant.png', fit: BoxFit.fill),
          ),
          DetailMenuBottomSheet(),
        ],
      ),
    );
  }
}
