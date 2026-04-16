import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';
import '../../widgets/custom_button.dart';
class SignUpSuccessView extends StatelessWidget {
  const SignUpSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child:Image.asset('assets/images/Pattern.jpg' ,
              fit:BoxFit.cover,
            ),
          ),
          Positioned.fill(
            top: 220.h,
            child: Column(
              children: [
                Image.asset('assets/images/congrate.jpg'),
                Text(
                  'Congrats!' ,
                  style: TextStyle(
                      fontFamily: 'Viga',
                      color: kPrimaryColor,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w400
                  ),
                ),
                Text('Your Profile Is Ready To Use' ,
                  style: TextStyle(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenHeight * .2,),
                Align(
                  alignment: Alignment.center,
                  child: CustomElevatedButton(
                    width: 145.w,
                    height: 47.h,
                    onPressed: (){
                      Navigator.of(context).pushReplacement
                        (MaterialPageRoute(builder: (context) => SignUpSuccessView()),
                      );
                    }, text: Text('Try Order' , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: kPrimaryFont,
                    fontSize: 16.sp,
                  ),
                  ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
