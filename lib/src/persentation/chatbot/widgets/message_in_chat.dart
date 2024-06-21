// user_message.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/utils/helper/constants/api.dart';

class UserMessage extends StatelessWidget {
  const UserMessage({
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
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10).r,
        child: Align(
          child: Row(
            children: [
              Text(
                date.toString(),
                style: const TextStyle(color: Colors.grey),
              ),
              Gap(ScreenUtil().setWidth(10)),
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
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                ),
              ),
              Gap(ScreenUtil().setWidth(10)),
              CircleAvatar(
                backgroundImage: AssetImage(ChatbotApi().kChatBot),
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
      Visibility(
        visible: isChatBot,
        child: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Text(
            date.toString(),
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ),
    ]);
  }
}
