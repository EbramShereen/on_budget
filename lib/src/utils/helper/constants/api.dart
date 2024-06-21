const String baseUrl = 'http://10.0.2.2:5016/api';

class RegisterApi {
  static const String customerSignUp = '$baseUrl/Registration/customer';
  static const String supplierSignUp = '$baseUrl/Registration/supplier';
  static String login(String userType) => '$baseUrl/Login?userType=$userType';
}

class HomeApi {
  String getCategoryProducts({required String category}) =>
      '$baseUrl/Category/$category';
}

class OrdersApi {
  String addProductsToOrder = '$baseUrl/Order';
}

class Product {
  String sizePrediction = 'http://10.0.2.2:5000/submit';
}

//ai models
class ChatbotApi {
  String kChatBotVersion = 'gemini-pro';
  String kChatBotApiKey = 'AIzaSyBsHMNVxOhAr0utuGH5f7-I_pvd6TBQd2g';

  String kChatBot = 'lib/src/res/images/chatbot/chatbot.png';
}

class GenerateImages {
  String kGenerateImageApi =
      'https://api-inference.huggingface.co/models/artificialguybr/TshirtDesignRedmond-V2';
  String kGenerateImageToken = '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';
}

class SizePredictor {
  String url = 'http://10.0.0.6:5000/submit';
}
