import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/main_views/order_view/widgets/location_info_card.dart';
import 'package:food_ninja/views/main_views/order_view/widgets/payment_info_card.dart';
import 'package:food_ninja/views/main_views/order_view/widgets/price_info_container.dart';

import '../../../constants.dart';
import '../../../widgets/custom_back_icon.dart';

class ConfirmOrderView extends StatelessWidget {
  const ConfirmOrderView({super.key});

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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * .08,),
                      CustomBackIcon(),
                      SizedBox(height: screenHeight * .02,),
                      Text('Confirm Order' ,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp,
                          fontFamily: kPrimaryFont,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: screenHeight * .02,),
                      LocationInfoCard(),
                      SizedBox(height: screenHeight * .02,),
                      PaymentInfoCard(),
                      SizedBox(height: screenHeight * .24,),
                      PriceInfoContainer(),
                    ],
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
