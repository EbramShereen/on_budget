import 'dart:convert';
import 'package:http/http.dart' as http;

class SizePredictorService {
  Future<Map<String, dynamic>> getSizePredict({
    required Map<String, dynamic> body,
    required String url,
  }) async {
    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode(body),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      print(response.statusCode);
      print(response.body);
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load size prediction');
    }
  }
}
