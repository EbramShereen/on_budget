import 'dart:convert';

import 'package:http/http.dart' as http;

class SupplierService {
  Future<Map<String, String>> supplierService({
    required String url,
    required Map<String, String> supplierData,
  }) async {
    try {
      final response = await http
          .post(Uri.parse(url), body: jsonEncode(supplierData), headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      });
      if (response.statusCode == 201 || response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print(response.statusCode);
        throw Exception(
            'Failed to post supplier data and this is status code: ${response.statusCode}');
      }
    } on Exception catch (e) {
      throw Exception('Failed to post supplier data $e');
    }
  }
}