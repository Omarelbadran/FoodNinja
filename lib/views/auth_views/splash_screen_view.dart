import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/views/auth_views/get_started_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const GetStartedView()),
      );
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child:Image.asset('assets/images/Pattern.jpg' ,
              fit:BoxFit.cover,
              ),
          ),
        Positioned.fill(
          top: 240.h,
          child: Column(
            children: [
              Image.asset(kPrimaryLogo ),
              Text(
                'FoodNinja' ,
              style: TextStyle(
                fontFamily: 'Viga',
                color: kPrimaryColor,
                fontSize: 40.sp,
                fontWeight: FontWeight.w400
              ),
              ),
              Text('Deliver Favorite Food' ,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              )
            ],
          ),
        )
        ],
      ),
    );
  }
}