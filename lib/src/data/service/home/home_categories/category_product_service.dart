import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class CategoryProductsService {
  Future<Map<String, dynamic>> getWatchesCategoryService(
      {required String category}) async {
    final url = category;
    final response = await http.get(
      Uri.parse(url),
      headers: {'Accept': 'application/json'},
    );
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return jsonResponse;
    } else {
      throw Exception('Failed to load products');
    }
  }
}
