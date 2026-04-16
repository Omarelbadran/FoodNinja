import 'package:flutter/material.dart';
import 'order_item.dart';
class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context , index){
        return OrderItemCard();
      },
      separatorBuilder: (_,_) =>  SizedBox(height: screenHeight * .02),
      itemCount: 5,
    );
  }
}
