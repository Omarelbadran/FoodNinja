import 'package:flutter/material.dart';
import 'package:food_ninja/views/main_views/profile_view/widgets/favourite_order_card.dart';
class FavouriteOrderList extends StatelessWidget {
  const FavouriteOrderList({super.key});


  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context , index){
        return FavouriteOrderCard();
      },
      separatorBuilder: (_,_) =>  SizedBox(height: screenHeight * .02),
      itemCount: 5,
    );
  }
}
