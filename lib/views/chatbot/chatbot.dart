import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/components/text_field_widget.dart';
import 'package:on_budget/service/chatbot_service.dart';
import 'package:on_budget/widgets/chatbot/chatbot_message.dart';
import 'package:on_budget/widgets/chatbot/user_message.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});
  static String id = "ChatBot";

  @override
  State<ChatBot> createState() => _ChatBotState();
}

TextEditingController controller = TextEditingController();

@override
class _ChatBotState extends State<ChatBot> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fasionista'),
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Gap(20),
          ChatBotMessage(
            message: 'give me tip for wearing cargo pants?',
          ),
          UserMessage(
            message: 'give me tip for wearing cargo pants?',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: TextFieldWidget(
              hintText: 'Enter your question',
              tap: () {},
              onSubmitted: (value) {
               
                controller.clear();
              },
            ),
          )
        ],
      ),
    );
  }
}
