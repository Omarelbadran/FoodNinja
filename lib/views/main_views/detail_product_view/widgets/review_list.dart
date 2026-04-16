import 'package:flutter/material.dart';
import 'package:food_ninja/views/main_views/detail_product_view/widgets/review_card.dart';
class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context , index){
        return ReviewCard();
      },
      separatorBuilder: (_,_) =>  SizedBox(height: screenHeight * .02),
      itemCount: 2,
    );
  }
}
