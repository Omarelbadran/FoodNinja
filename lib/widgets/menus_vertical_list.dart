import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/models/menu_model.dart';

import 'menu_card.dart';
class MenusVerticalList extends StatelessWidget {
  final List<MenusModel> menus;
  const MenusVerticalList({super.key, required this.menus});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: menus.length,
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 90.h,
        crossAxisCount: 1,
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) {
        return MenuCard(menu: menus[index]);
      },
    );
  }
}
