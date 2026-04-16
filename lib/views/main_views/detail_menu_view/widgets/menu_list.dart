import 'package:flutter/material.dart';
import 'package:food_ninja/views/main_views/detail_menu_view/widgets/popular_menu_card.dart';
class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      // padding: EdgeInsets.symmetric(horizontal: 6.w , vertical: 6.h),
      itemBuilder: (context , index){
        return PopularMenuCard();
      },
      separatorBuilder: (_,_) =>  SizedBox(width: screenWidth * .04,),
      itemCount: 6,
    );
  }
}

