import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/modules/chatbot/data/service/chatbot_service.dart';
import 'package:on_budget/src/modules/chatbot/presentation/widgets/chatbot_message.dart';
import 'package:on_budget/src/modules/chatbot/presentation/widgets/message_in_chat.dart';
import 'package:on_budget/src/utils/components/background.dart';
import 'package:on_budget/src/utils/components/bottom_bar/bottom_navber.dart';
import 'package:on_budget/src/utils/components/leading_icon.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';
import '../../../../utils/components/text_field_widget.dart';
import '../../data/models/chatbot_model.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({Key? key}) : super(key: key);
  static String id = 'chatbot';

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  TextEditingController controller = TextEditingController();
  String? message;
  ChatBotModel? model;
  List<ChatBotModel> messagesList = [];
  List<ChatBotModel> userMessagesList = [];
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    controller.clear();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fashionista'),
        leading: const LeadingIcon(),
      ),
      body: Background(
        child: Column(
          children: [
            const Gap(20),
            Expanded(
              child: FutureBuilder<List<ChatBotModel>>(
                future: _fetchMessages(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  } else {
                    return ListView.builder(
                      reverse: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final int reversedIndex =
                            snapshot.data!.length - 1 - index;
                        final msg = snapshot.data![reversedIndex];

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
                  }
                },
              ),
            ),
            TextFieldWidget(
              controller: controller,
              hintText: 'Enter your question',
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  message = value;
                  userMessagesList.add(ChatBotModel(
                    message: message!,
                    date: DateTime.now().toString(),
                    isChatBot: false,
                  ));
                  TalkWithGemini(
                    updateMessagesList: updateMessagesList,
                    msg: message!,
                    messagesList: messagesList,
                  ).talkWithGemini();
                  setState(() {});
                }
                controller.clear();
              },
              suffixIcon: IconButton(
                onPressed: () {
                  message = controller.text;
                },
                icon: const Icon(Icons.send),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: BottomAppBar(
          color: kThirdColor,
          elevation: 0,
          height: 100,
          child: CustomBottomNavBar(
            currentIndex: 2,
            controller: scrollController,
            lastIndex: 2,
          ),
        ),
      ),
    );
  }

  Future<List<ChatBotModel>> _fetchMessages() async {
    return messagesList;
  }

  void updateMessagesList(List<ChatBotModel> updatedMessagesList) {
    setState(() {
      messagesList = updatedMessagesList;
    });
  }
}
