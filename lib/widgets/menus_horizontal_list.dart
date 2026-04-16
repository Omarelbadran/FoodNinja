import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/models/menu_model.dart';


import 'menu_card.dart';
class MenusHorizontalList extends StatelessWidget {
  final List<MenusModel> menus;
  const MenusHorizontalList({super.key, required this.menus});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:  100.h,
      child: ListView.builder(
          itemCount: menus.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
            final m = menus[index];
            return MenuCard(menu: m);
          }
      ),
    );
  }
}
