import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<dynamic> delete({
  required String url,
  String? token,
  required Map<String, String> body,
}) async {
  Map<String, String> headers = {};
  if (token != null) {
    headers.addAll({'Authorization': 'Bearer $token'});
  }

  Response response =
      await http.delete(Uri.parse(url), headers: headers, body: body);

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    log('there was an error and the status code is ${response.statusCode}');
  }
}