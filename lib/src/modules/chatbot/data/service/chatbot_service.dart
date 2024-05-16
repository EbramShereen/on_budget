import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:on_budget/src/utils/helper/api/chat_bot.dart';
import 'package:on_budget/src/utils/helper/constants/chat_date.dart';

import '../models/chatbot_model.dart';

class TalkWithGemini {
  final Function(List<ChatBotModel>) updateMessagesList;
  String? msg;
  List<ChatBotModel> messagesList;

  TalkWithGemini({
    required this.updateMessagesList,
    required this.msg,
    required this.messagesList,
  });

  Future<void> talkWithGemini() async {
    final model =
        GenerativeModel(model: kChatBotVersion, apiKey: kChatBotApiKey);
    List<ChatBotModel> updatedMessagesList = List.from(messagesList);

    final content = Content.text(msg!);
    updatedMessagesList.add(ChatBotModel(
      message: msg!,
      date: ChatDate().date(),
      isChatBot: false,
    ));

    final response = await model.generateContent([content]);
    updatedMessagesList.add(ChatBotModel(
      message: response.text ?? '',
      date: ChatDate().date(),
      isChatBot: true,
    ));

    updateMessagesList(updatedMessagesList);
  }
}
