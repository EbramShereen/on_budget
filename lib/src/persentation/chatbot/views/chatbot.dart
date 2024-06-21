import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/data/models/chatbot/chatbot_model.dart';
import 'package:on_budget/src/data/repository/chatbot/chatbot_repository.dart';
import 'package:on_budget/src/data/service/chatbot/chatbot_service.dart';
import 'package:on_budget/src/logic/chatbot/chatbot_cubit.dart';
import 'package:on_budget/src/logic/chatbot/chatbot_states.dart';
import 'package:on_budget/src/persentation/chatbot/widgets/chatbot_message.dart';
import 'package:on_budget/src/persentation/chatbot/widgets/message_in_chat.dart';
import 'package:on_budget/src/utils/components/background.dart';
import 'package:on_budget/src/utils/components/bottom_bar/bottom_navber.dart';
import 'package:on_budget/src/utils/components/leading_icon.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';
import '../../../utils/components/text_field_widget.dart';

class ChatBotView extends StatelessWidget {
  const ChatBotView({Key? key}) : super(key: key);
  static String id = 'chatbot';

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    final ScrollController scrollController = ScrollController();
    final List<ChatBotModel> messagesList = [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fashionista'),
        leading: const LeadingIcon(),
      ),
      body: Background(
        child: BlocProvider(
          create: (context) =>
              ChatBotCubit(ChatBotRepository(ChatBotService())),
          child: Column(
            children: [
              Gap(ScreenUtil().setHeight(20)),
              Expanded(
                child: BlocBuilder<ChatBotCubit, ChatBotState>(
                  builder: (context, state) {
                    if (state is ChatBotLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (state is ChatBotError) {
                      return Center(child: Text('Error: ${state.error}'));
                    }
                    final messages = state.messagesList.reversed.toList();
                    return ListView.builder(
                      reverse: true,
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final msg = messages[index];
                        return msg.isChatBot
                            ? ChatbotMessage(
                                message: msg.message,
                                isChatBot: msg.isChatBot,
                                date: msg.date,
                              )
                            : UserMessage(
                                message: msg.message,
                                isChatBot: msg.isChatBot,
                                date: msg.date,
                              );
                      },
                    );
                  },
                ),
              ),
              TextFieldWidget(
                controller: controller,
                hintText: 'Enter your question',
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    context
                        .read<ChatBotCubit>()
                        .sendMessage(value, messagesList);
                    controller.clear();
                  }
                },
                suffixIcon: IconButton(
                  onPressed: () {
                    final message = controller.text;
                    if (message.isNotEmpty) {
                      context
                          .read<ChatBotCubit>()
                          .sendMessage(message, messagesList);
                      controller.clear();
                    }
                  },
                  icon: const Icon(Icons.send),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10).r,
        child: BottomAppBar(
          color: kThirdColor,
          elevation: 0,
          height: 100.h,
          child: CustomBottomNavBar(
            currentIndex: 2,
            controller: scrollController,
            lastIndex: 2,
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 200.w,
        height: 300.h,
      ),
    );
  }
}
