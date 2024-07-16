import '../../models/chatbot/chatbot_model.dart';
import '../../service/chatbot/chatbot_service.dart';

class ChatBotRepository {
  final ChatBotService _chatBotService;

  ChatBotRepository(this._chatBotService);

  Future<ChatBotModel> sendMessage(String msg) async {
    return await _chatBotService.sendMessage(msg);
  }
}
