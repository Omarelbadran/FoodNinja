import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/widgets/choice_item.dart';
import 'package:food_ninja/widgets/custom_button.dart';
import 'package:food_ninja/widgets/search_text_form_field.dart';

import '../../constants.dart';
class FilteringView extends StatefulWidget {
  const FilteringView ({super.key});

  @override
  State<FilteringView> createState() => _FilteringViewState();
}

class _FilteringViewState extends State<FilteringView> {
  String selectedType = '';
  final Set<String> selectedDistances = {};
  final Set<String> selectedFoods = {};

  final List<String> distances = ['1 Km', '<10 Km', '>10 Km'];
  final List<String> foods = [
    'Cake',
    'Soup',
    'Main Course',
    'Appetizer',
    'Dessert',
  ];
  @override
  Widget build(BuildContext context) {
final double screenHeight = MediaQuery.of(context).size.height;
final double screenWidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child:Image.asset('assets/images/Pattern.jpg' , fit: BoxFit.fill,),
          ),
          Positioned.fill(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 50.h),
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
                            Container(
                              padding: EdgeInsets.all(10.r),
                              width: 40.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withValues(alpha: .25),
                                    blurRadius: 10,          // softness of shadow
                                    spreadRadius: 0,
                                    offset: Offset(5, 5),
                                  ),
                                ],
                              ),
                              child: SvgPicture.asset('assets/images/Icon_Notifiaction.svg'),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * .02,),
                      SearchTextFormField(),
                      SizedBox(height: screenHeight * .02,),
                      Text('Type' , style: TextStyle(
                        fontFamily: kPrimaryFont,
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: screenHeight * .02,),
                      Row(
                        children: [
                          ChoiceItem(
                            width: 120.w,
                              label: 'Restaurant',
                            selected: selectedType == 'Restaurant',
                          onTap: (){
                            setState(() {
                              selectedType = 'Restaurant';
                            });
                          },
                          ),
                          SizedBox(width: screenWidth * .02,),
                          ChoiceItem(
                            width: 100.w,
                            label: 'Menu',
                            selected: selectedType == 'Menu',
                            onTap: () {
                              setState(() {
                                selectedType = 'Menu';
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * .02,),
                      Text('Distance' , style: TextStyle(
                        fontFamily: kPrimaryFont,
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: screenHeight * .02,),
                      Wrap(
                        spacing: 12.w,
                        children: distances.map((distance) {
                          return ChoiceItem(
                            width: 90.w,
                            label: distance,
                            selected: selectedDistances.contains(distance),
                            onTap: () {
                              setState(() {
                                if (selectedDistances.contains(distance)) {
                                  selectedDistances.remove(distance);
                                } else {
                                  selectedDistances.add(distance);
                                }
                              });
                            },
                          );
                        }).toList(),
                      ),
                      SizedBox(height: screenHeight * .02,),
                      Text('Food' , style: TextStyle(
                        fontFamily: kPrimaryFont,
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: screenHeight * .02,),
                      Wrap(
                        spacing: 8.w,
                        runSpacing: 8.h,
                        children: foods.map((food) {
                          return ChoiceItem(
                            width: 90.w,
                            label: food,
                            selected: selectedFoods.contains(food),
                            onTap: () {
                              setState(() {
                                if (selectedFoods.contains(food)) {
                                  selectedFoods.remove(food);
                                } else {
                                  selectedFoods.add(food);
                                }
                              });
                            },
                          );
                        }).toList(),
                      ),
                      SizedBox(height: screenHeight * .1,),
                      Center(
                        child: CustomElevatedButton(
                            onPressed: (){},
                            text: Text('Search',
                              style: TextStyle(
                                fontFamily: kPrimaryFont,
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            height: 50.h,
                            width: 350.w,
                        ),
                      )
                    ],
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
