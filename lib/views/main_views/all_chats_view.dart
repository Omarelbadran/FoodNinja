import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/models/chat_model.dart';
import '../../widgets/chat_item.dart';
import '../../widgets/custom_back_icon.dart';

class AllChatsView extends StatelessWidget {
  const AllChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/Pattern.jpg', fit: BoxFit.fill),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * .05),
                  CustomBackIcon(),
                  SizedBox(height: screenHeight * .02),
                  Text(
                    'Chat',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      fontFamily: kPrimaryFont,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemCount: chatList.length,
                      itemBuilder: (BuildContext context, int index) {
                        var chat = chatList[index];
                        return ChatItem(
                          name: chat.name,
                          lastMessage: chat.message,
                          time: chat.time,
                          image: chat.image,
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(height: screenHeight * .02),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
