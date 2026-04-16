import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/views/main_views/detail_product_view/widgets/favourite_icon.dart';
import 'package:food_ninja/views/main_views/detail_product_view/widgets/location_icon.dart';
import 'package:food_ninja/views/main_views/detail_product_view/widgets/popular_icon.dart';
import 'package:food_ninja/views/main_views/detail_product_view/widgets/review_list.dart';
import 'package:food_ninja/views/main_views/detail_product_view/widgets/scroll_indicator.dart';
import 'package:food_ninja/views/main_views/detail_product_view/widgets/show_order_numbers.dart';
import 'package:food_ninja/views/main_views/detail_product_view/widgets/show_rating.dart';
class DetailProductBottomSheet extends StatelessWidget {
  const DetailProductBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return DraggableScrollableSheet(
        initialChildSize: 0.55,
        minChildSize: 0.45,
        maxChildSize: 0.9,
        builder: (context , scrollController){
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40.r),
              ),
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
                      'Rainbow Sandwich\nSugarless' ,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                      fontFamily: kPrimaryFont,
                      fontSize: 27.sp,
                      color: Colors.black,
                    ),
                    ),
                    SizedBox(height: screenHeight * .03,),
                    Row(
                      children: [
                        ShowRating(),
                        SizedBox(width: screenWidth * .1,),
                        ShowOrderNumbers(),
                      ],
                    ),
                    SizedBox(height: screenHeight * .03,),
                    Text(
                      maxLines: 10,
                        'Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: kPrimaryFont,
                      fontSize: 12.sp,
                    ),
                    ),
                    SizedBox(height: screenHeight * .02,),
                    Text('Testimonials' ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: kPrimaryFont,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(height: screenHeight * .03,),
                    ReviewList(),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}
