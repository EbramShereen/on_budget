import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:on_budget/src/utils/helper/constants/api.dart';

class LoginService {
  Future<Map<String, String>> loginService(
      {required String userType, required Map<String, String> body}) async {
    try {
      Response response = await http.post(
          Uri.parse(RegisterApi.login(userType)),
          body: jsonEncode(body),
          headers: {
            'accept': 'text/plain',
            'Content-Type': 'application/json'
          });
      log(response.body); // Print the response body
      log(response.statusCode.toString());
      return jsonDecode(response.body);
    } on Exception catch (e) {
      throw Exception('Failed to login (service) and the exception is $e');
    }
  }
}
