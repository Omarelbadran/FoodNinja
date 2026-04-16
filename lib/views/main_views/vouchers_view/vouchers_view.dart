import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/views/main_views/vouchers_view/widgets/vouchers_list.dart';
import 'package:food_ninja/widgets/custom_back_icon.dart';

import '../../../widgets/custom_button.dart';
class VouchersView extends StatelessWidget {
  const VouchersView({super.key});

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
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * .08,),
                CustomBackIcon(),
                SizedBox(height: screenHeight * .02,),
                Text('Voucher Promo' ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.sp,
                  fontFamily: kPrimaryFont,
                  color: Colors.black,
                ),
                ),
                Expanded(child: VouchersList()),
                CustomElevatedButton(
                    onPressed: (){},
                    text: Text(
                      'Check out' ,
                      style: TextStyle(
                          fontFamily: kPrimaryFont,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp
                      ),
                    ),
                    height: 55.h,
                    width: 325.w
                ),
                SizedBox(height: screenHeight *.05,),
              ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
