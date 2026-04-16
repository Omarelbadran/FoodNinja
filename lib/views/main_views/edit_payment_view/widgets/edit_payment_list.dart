import 'package:flutter/material.dart';
import 'package:food_ninja/views/main_views/edit_payment_view/widgets/payment_card.dart';
class EditPaymentList extends StatelessWidget {
  const EditPaymentList({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context , index){
        return PaymentCard(isActive: false,);
      },
      separatorBuilder: (_,_) =>  SizedBox(height: screenHeight * .02),
      itemCount: 5,
    );
  }
}
