import 'package:flutter/material.dart';
import 'package:food_ninja/views/main_views/your_order_view/widgets/your_order_card.dart';
class YourOrderList extends StatelessWidget {
  const YourOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return  ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context , index){
        return YourOrderCard();
      },
      separatorBuilder: (_,_) =>  SizedBox(height: screenHeight * .02),
      itemCount: 5,
    );
  }
}
