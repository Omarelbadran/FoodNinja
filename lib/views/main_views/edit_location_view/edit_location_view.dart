import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/main_views/edit_location_view/widgets/location_card.dart';
import '../../../constants.dart';
import '../../../widgets/custom_back_icon.dart';
class EditLocationView extends StatelessWidget {
  const EditLocationView({super.key});

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
                      'Shipping',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.sp,
                        fontFamily: kPrimaryFont,
                        color: Colors.black,
                      ),
                    ),
                    LocationCard(
                      title: 'Order Location',
                      address: '8502 Preston Rd. Inglewood, Maine 98380',
                    ),
                    LocationCard(
                      title: 'Deliver To',
                      address: '4517 Washington Ave. Manchester Kentucky 39495',
                      showSetLocation: true,
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
