import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class GenerateTshirtApi {
  Future<Uint8List> post(
      {required String url,
      required Map<String, dynamic> body,
      required String token}) async {
    Map<String, String> headers = {
      'Authorization': 'Bearer $token',
      "accept": "image/*"
    };
    Response response = await http.post(Uri.parse(url),
        body: jsonEncode(body), headers: headers);
    if (response.statusCode == 200) {
      return response.bodyBytes;
    } else {
      throw Exception('Failed to load image');
    }
  }
}