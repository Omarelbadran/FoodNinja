import 'package:flutter/material.dart';
import 'package:food_ninja/views/main_views/notifications_view/widgets/notification_card.dart';
class NotificationList extends StatelessWidget {
  const NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return ListView.separated(
      itemBuilder: (context , index){
        return NotificationCard();
      },
      separatorBuilder: (_,_) =>  SizedBox(height: screenHeight * .02),
      itemCount: 5,
    );
  }
}
