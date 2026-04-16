import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/constants.dart';
import 'package:food_ninja/widgets/chat_bubble.dart';
import 'package:food_ninja/widgets/chat_header.dart';
import 'package:food_ninja/widgets/message_input.dart';

import '../../models/message_model.dart';
import '../../widgets/custom_back_icon.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

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
                  SizedBox(height: screenHeight * .02),
                  ChatHeader(),
                  SizedBox(height: screenHeight * .02),
                  Expanded(
                    child: ListView.builder(
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final msg = messages[index];
                        return ChatBubble(
                          text: msg.text,
                          isMe: msg.isMe,
                        );
                      },
                    ),
                  ),
                  MessageInput(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
