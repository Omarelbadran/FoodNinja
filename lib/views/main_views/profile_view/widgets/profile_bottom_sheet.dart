import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/views/main_views/profile_view/widgets/favourite_order_list.dart';
import 'package:food_ninja/views/main_views/profile_view/widgets/show_member_state.dart';
import 'package:food_ninja/views/main_views/profile_view/widgets/voucher_notification_card.dart';

import '../../detail_product_view/widgets/scroll_indicator.dart';

class ProfileBottomSheet extends StatelessWidget {
  const ProfileBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return DraggableScrollableSheet(
      initialChildSize: 0.55,
      minChildSize: 0.45,
      maxChildSize: 0.9,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(40.r)),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * .015),
                  Center(
                    child: ScrollIndicator(),
                  ),
                  SizedBox(height: screenHeight * .04,),
                  ShowMemberState(),
                  SizedBox(height: screenHeight * .02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Anam Wusono' ,
                          style: TextStyle(
                            fontFamily: kPrimaryFont,
                            fontSize: 27.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text('anamwp66@gmail.com' ,
                            style: TextStyle(
                              fontFamily: kPrimaryFont,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withValues(alpha: .2)
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset('assets/images/Edit_Icon.svg' ,width: 25.w,height: 25.h,)
                    ],
                  ),
                  SizedBox(height: screenHeight * .02,),
                  VoucherNotificationCard(),
                  SizedBox(height: screenHeight * .02,),
                  Text('Favorite' ,
                  style: TextStyle(
                    fontFamily: kPrimaryFont,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: screenHeight * .02,),
                  FavouriteOrderList()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
