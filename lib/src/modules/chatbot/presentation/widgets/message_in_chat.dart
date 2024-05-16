import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../utils/helper/api/chat_bot.dart';

class UserMessage extends StatelessWidget {
  const UserMessage(
      {super.key,
      required this.message,
      required this.isChatBot,
      required this.date});

  final String message;
  final bool isChatBot;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10),
        child: Align(
          child: Row(
            children: [
              Text(
                date.toString(),
                style: const TextStyle(color: Colors.grey),
              ),
              const Gap(10),
              Container(
                padding: const EdgeInsets.all(10),
                constraints:
                    const BoxConstraints(maxWidth: 230, maxHeight: 100),
                decoration: BoxDecoration(
                  color: const Color(0xFF2a3575),
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30),
                    topRight: const Radius.circular(30),
                    bottomRight: Radius.circular(isChatBot ? 30 : 0),
                    bottomLeft: Radius.circular(isChatBot ? 0 : 30),
                  ),
                ),
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(kChatBot),
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
