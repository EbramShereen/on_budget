import 'package:http/http.dart' as http;

import 'package:http/http.dart';

class AddToCartService {
  Future<int> addProductToCart({
    required Map<String, dynamic> body,
    required String url,
  }) async {
    final Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: {'Accept': 'text/plain'},
    );
    try {
      if (response.statusCode == 201) {
        return int.parse(response.body);
      } else {
        throw Exception(
            'there was an error and the status code is ${response.statusCode}');
      }
    } on Exception catch (e) {
      throw Exception('there was an error and the error is $e');
    }
  }
}
