import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/models/menu_model.dart';
import 'package:food_ninja/views/main_views/filtering_view.dart';
import 'package:food_ninja/widgets/custom_button.dart';
import 'package:food_ninja/widgets/menus_horizontal_list.dart';
import 'package:food_ninja/widgets/navigation_bar.dart';
import 'package:food_ninja/widgets/restaurants_horizontal_list.dart';
import 'package:food_ninja/widgets/search_text_form_field.dart';
import 'package:food_ninja/widgets/vertical_restaurants_list.dart';

import '../../models/restaurants_model.dart';
import '../../widgets/filtering_icon.dart';
import '../../widgets/menus_vertical_list.dart';
import '../../widgets/notification_icon.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool showAllRestaurants = false;
  bool showAllMenus = false;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child:Image.asset('assets/images/Pattern.jpg' , fit: BoxFit.fill,), ),
          Positioned.fill(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 50.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Find Your\nFavorite Food' ,
                          style: TextStyle(
                            fontSize: 31.sp,
                            fontFamily: kPrimaryFont,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                          NotificationIcon()
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * .02,),
                    //the search and filtering
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(child: SearchTextFormField()),
                        SizedBox(width: screenWidth * .03,),
                        FilteringIcon(
                          onTap:(){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => FilteringView(),
                              ),
                            );
                          }
                        )
                      ],
                    ),
                    SizedBox(height: screenHeight * .02,),
                    //The promo advertising
                    Container(
                      width: 325.w,
                      height: 150.h,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 13.w,
                            top : 18.h,
                            child: Transform.scale(
                              scale: 1.1,
                                child: Image.asset('assets/images/Image_1.png',
                                  width: 230.w,
                                  height: 150.h,
                                ),
                            ),
                          ),
                          Positioned(
                            top: 45.h,
                            right: 18.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Special Dial For\nOctober' , style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontFamily: kPrimaryFont,
                                  color: Colors.white,
                                  fontSize: 17.sp,
                                ),
                                ),
                                SizedBox(height: screenHeight * .01,),
                                CustomElevatedButton(
                                    onPressed: (){}, text:
                                Text('Buy Now' , style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontFamily: kPrimaryFont,
                                  color: kPrimaryColor,
                                  fontSize: 10.sp,
                                ),),
                                  height: 30.h,
                                  width: 90.w,
                                  backgroundColor: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    //the restaurants list
                    SizedBox(height: screenHeight * .02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          showAllRestaurants ? "Popular Restaurants" : "Nearest Restaurants" ,
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontFamily: kPrimaryFont,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              showAllRestaurants = !showAllRestaurants;
                            },
                            );
                          },
                          child: Text(
                            showAllRestaurants ? "View Less" : "View More",
                            style:  TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              fontFamily: kPrimaryFont,
                              color: Color(0xffFF7C32),
                            ),
                          ),
                        ),
                      ],
                    ),
                    showAllRestaurants
                        ? VerticalRestaurantsList(restaurants: restaurants)
                        : RestaurantsHorizontalList(
                      restaurants: restaurants.take(2).toList(),
                    ),
                    SizedBox(height: screenHeight * .02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Popular Menu' , style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontFamily: kPrimaryFont,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              showAllMenus = !showAllMenus;
                            },
                            );
                          },
                          child: Text(
                            showAllMenus ? "View Less" : "View More",
                            style:  TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              fontFamily: kPrimaryFont,
                              color: Color(0xffFF7C32),
                            ),
                          ),
                        ),
                      ],
                    ),
                    showAllMenus
                        ? MenusVerticalList(menus: menus,)
                        : MenusHorizontalList(
                      menus: menus.take(2).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 12.w,
            left: 12.w,
            bottom: 20.h,
              child: FloatingNavigationBar()
          ),
        ],
      ),
    );
  }
}
