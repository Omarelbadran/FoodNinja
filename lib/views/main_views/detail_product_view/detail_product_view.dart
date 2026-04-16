import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/views/main_views/detail_product_view/widgets/detail_product_bottom_sheet.dart';
import 'package:food_ninja/widgets/custom_button.dart';
class DetailProductView extends StatelessWidget {
  const DetailProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/Photo_Restaurant.png', fit: BoxFit.fill),
          ),
        DetailProductBottomSheet(),
          Positioned(
            right: 20.w,
            left: 20.w,
            bottom: 20.h,
              child: CustomElevatedButton(
                  onPressed: (){}, 
                  text: Text('Add To Chart' ,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontFamily: kPrimaryFont,
                  ),
                  ),
                  height: 50.h,
                  width: 320.w,
              ),
          ),
        ],
      ),
    );
  }
}
