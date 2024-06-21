import 'package:bloc/bloc.dart';
import 'package:on_budget/src/logic/chatbot/chatbot_states.dart';
import '../../data/models/chatbot/chatbot_model.dart';
import '../../data/repository/chatbot/chatbot_repository.dart';

class ChatBotCubit extends Cubit<ChatBotState> {
  final ChatBotRepository _chatBotRepository;

  ChatBotCubit(this._chatBotRepository) : super(ChatBotInitial());

  void sendMessage(String message, List<ChatBotModel> messagesList) async {
    try {
      emit(ChatBotLoading(messagesList));
      final response = await _chatBotRepository.sendMessage(message);
      messagesList.add(ChatBotModel(
        message: message,
        date: DateTime.now().toString(),
        isChatBot: false,
      ));
      messagesList.add(response);
      emit(ChatBotSuccess(messagesList));
    } catch (e) {
      emit(ChatBotError(messagesList, e.toString()));
    }
  }
}
