// chatbot_message.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/utils/helper/constants/api.dart';

class ChatbotMessage extends StatelessWidget {
  const ChatbotMessage({
    Key? key,
    required this.message,
    required this.isChatBot,
    required this.date,
  }) : super(key: key);

  final String message;
  final bool isChatBot;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10).r,
        child: Align(
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(ChatbotApi().kChatBot),
                backgroundColor: Colors.transparent,
              ),
              Gap(ScreenUtil().setWidth(5)),
              Container(
                padding: const EdgeInsets.all(10).w,
                constraints: BoxConstraints(maxWidth: 190.w),
                decoration: BoxDecoration(
                  color: const Color(0xFF2a3575),
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30),
                    topRight: const Radius.circular(30),
                    bottomRight: Radius.circular(isChatBot ? 30 : 0),
                    bottomLeft: Radius.circular(isChatBot ? 0 : 30),
                  ).r,
                ),
                child: Text(
                  message,
                  style: TextStyle(color: Colors.white, fontSize: 12.sp),
                ),
              ),
              const Gap(10),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 30).r,
        child: Text(
          date.toString(),
          style: const TextStyle(color: Colors.grey),
        ),
      ),
    ]);
  }
}