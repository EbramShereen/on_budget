import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/helper/constants.dart';

class ChatBotMessage extends StatelessWidget {
  ChatBotMessage({
    super.key,
    required this.message,
  });
  String? message;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Gap(8),
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(kChatBot),
          backgroundColor: Colors.transparent,
        ),
        const Gap(15),
        Container(
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(maxWidth: 300),
          decoration: const BoxDecoration(
            color: Color(0xFF2a3575),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28),
              topRight: Radius.circular(28),
              bottomRight: Radius.circular(28),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$message',
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}



 
