import 'dart:io';

import 'package:google_generative_ai/google_generative_ai.dart';

class ChatBotService {
  final model = GenerativeModel(
      model: 'gemini-pro', apiKey: 'AIzaSyCPuOgvdAmejhQctaH1W-NGAZ92gKHOq_E');
}
