import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/views/main_views/detail_menu_view/widgets/menu_list.dart';
import 'package:food_ninja/views/main_views/detail_menu_view/widgets/show_distance.dart';
import 'package:food_ninja/views/main_views/detail_product_view/widgets/show_rating.dart';

import '../../../../constants.dart';
import '../../detail_product_view/widgets/favourite_icon.dart';
import '../../detail_product_view/widgets/location_icon.dart';
import '../../detail_product_view/widgets/popular_icon.dart';
import '../../detail_product_view/widgets/scroll_indicator.dart';

class DetailMenuBottomSheet extends StatelessWidget {
  const DetailMenuBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
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
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * .015),
                  Center(
                    child: ScrollIndicator(),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PopularIcon(),
                        SizedBox(width: screenWidth * .45,),
                        LocationIcon(),
                        SizedBox(width: screenWidth * .03,),
                        FavouriteIcon(),
                      ],
                    ),
                  ),
                  Text(
                    maxLines: 2,
                    'Wijie Bar and Resto' ,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                      fontFamily: kPrimaryFont,
                      fontSize: 27.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: screenHeight * .02,),
                  Row(
                    children: [
                      ShowDistance(),
                      SizedBox(width: screenWidth * .1,),
                      ShowRating(),
                    ],
                  ),
                  SizedBox(height: screenHeight * .03,),
                  Text(
                    maxLines: 10,
                    'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . . ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: kPrimaryFont,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: screenHeight * .02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular Menu' ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: kPrimaryFont,
                        fontSize: 20.sp,
                        color: Colors.black,
                      ),
                      ),
                      Text('View All' ,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: kPrimaryFont,
                          fontSize: 12.sp,
                          color: Color(0xffFF7C32),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * .02,),
                  SizedBox(
                      height: screenHeight * .22,
                      child: MenuList()
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
