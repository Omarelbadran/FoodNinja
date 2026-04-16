import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/main_views/edit_payment_view/widgets/edit_payment_list.dart';

import '../../../constants.dart';
import '../../../widgets/custom_back_icon.dart';
class EditPaymentView extends StatelessWidget {
  const EditPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/Pattern.jpg', fit: BoxFit.fill),
          ),
          Positioned.fill(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * .05),
                    CustomBackIcon(),
                    SizedBox(height: screenHeight * .02),
                    Text(
                      'Chat',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.sp,
                        fontFamily: kPrimaryFont,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: screenHeight *.02,),
                    Expanded(child: EditPaymentList()),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
