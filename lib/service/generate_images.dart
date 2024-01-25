import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';

const String apiUrl =
    "https://api-inference.huggingface.co/models/artificialguybr/TshirtDesignRedmond-V2";
const String authorizationToken = "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";

Future<Uint8List> query(Map<String, dynamic> payload) async {
  try {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $authorizationToken';

    final response = await dio.post(apiUrl, data: jsonEncode(payload));

    if (response.statusCode == 200) {
      return Uint8List.fromList(response.data);
    } else {
      throw Exception('Failed to query the API');
    }
  } catch (e) {
    throw Exception('Error: $e');
  }
}
