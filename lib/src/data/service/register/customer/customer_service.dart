import 'dart:convert';
import 'package:http/http.dart' as http;

class CustomerService {
  Future<int> post({
    required String url,
    required Map<String, String> customerData,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode(customerData),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        },
      );
      if (response.statusCode == 201) {
        return int.parse(response.body);
      } else {
        throw Exception('Failed to post customer data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to post customer data: $e');
    }
  }
}
