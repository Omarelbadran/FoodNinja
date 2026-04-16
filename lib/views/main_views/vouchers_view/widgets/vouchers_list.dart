import 'package:flutter/material.dart';
import 'package:food_ninja/views/main_views/vouchers_view/widgets/voucher_card.dart';
class VouchersList extends StatelessWidget {
  const VouchersList({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return ListView.separated(
        itemBuilder: (context , index){
          return VoucherCard();
        },
      separatorBuilder: (_,_) =>  SizedBox(height: screenHeight * .02),
        itemCount: 5,
    );
  }
}
