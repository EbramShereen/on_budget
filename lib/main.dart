import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:on_budget/src/modules/on_boarding/views/on_boarding.dart';
import 'package:on_budget/src/utils/helper/functions/main/routing.dart';
import 'package:on_budget/src/utils/helper/functions/main/theme.dart';

import 'firebase_options.dart';
import 'src/utils/helper/api/chat_bot.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Gemini.init(apiKey: kChatBotApiKey);
  runApp(
    const OnBudget(),
  );
}

class OnBudget extends StatelessWidget {
  const OnBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes().theme(context),
      routes: Routing().routes,
      // home: const ChatBot(),
      initialRoute: OnBoardingScreens.id,
    );
  }
}
