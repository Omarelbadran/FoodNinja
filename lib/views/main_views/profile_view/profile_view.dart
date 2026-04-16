import 'package:flutter/material.dart';
import 'package:food_ninja/views/main_views/profile_view/widgets/profile_bottom_sheet.dart';
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill( 
              child: Image.asset('assets/images/my_profile.png' , fit: BoxFit.fill,)
          ),
          ProfileBottomSheet(),
        ],
      ),
    );
  }
}
