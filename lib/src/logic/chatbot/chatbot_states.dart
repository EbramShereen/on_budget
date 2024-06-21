import 'package:on_budget/src/data/models/chatbot/chatbot_model.dart';

class ChatBotState {
  final List<ChatBotModel> messagesList;

  ChatBotState(this.messagesList);
}

class ChatBotInitial extends ChatBotState {
  ChatBotInitial() : super([]);
}

class ChatBotLoading extends ChatBotState {
  ChatBotLoading(List<ChatBotModel> messagesList) : super(messagesList);
}

class ChatBotSuccess extends ChatBotState {
  ChatBotSuccess(List<ChatBotModel> messagesList) : super(messagesList);
}

class ChatBotError extends ChatBotState {
  final String error;

  ChatBotError(List<ChatBotModel> messagesList, this.error)
      : super(messagesList);
}
