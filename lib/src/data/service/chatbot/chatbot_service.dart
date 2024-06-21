// chatbot_service.dart
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:on_budget/src/utils/helper/constants/api.dart';
import 'package:on_budget/src/utils/helper/constants/chat_date.dart';
import '../../models/chatbot/chatbot_model.dart';

class ChatBotService {
  Future<ChatBotModel> sendMessage(String msg) async {
    final model = GenerativeModel(
      model: ChatbotApi().kChatBotVersion,
      apiKey: ChatbotApi().kChatBotApiKey,
    );
    final content = Content.text(msg);
    final response = await model.generateContent([content]);

    return ChatBotModel(
      message: response.text ?? '',
      date: ChatDate().date(),
      isChatBot: true,
    );
  }
}
