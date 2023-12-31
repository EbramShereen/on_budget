import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:dio/dio.dart';

class ApiHandler {
  static final String apiUrl =
      "https://api-inference.huggingface.co/models/artificialguybr/TshirtDesignRedmond-V2";
  static final String apiToken = "YOUR_API_TOKEN";

  static Future<ui.Image> generateImage(String inputText) async {
    try {
      final response = await Dio().post(
        apiUrl,
        data: {"inputs": inputText},
        options: Options(
          headers: {"Authorization": "Bearer $apiToken"},
          responseType: ResponseType.bytes, // Specify responseType here
        ),
      );

      final imageBytes = response.data as Uint8List;
      final codec =
          await ui.instantiateImageCodec(Uint8List.fromList(imageBytes));
      final frame = await codec.getNextFrame();
      return frame.image;
    } catch (e) {
      print("Error in API call: $e");
      rethrow;
    }
  }
}
