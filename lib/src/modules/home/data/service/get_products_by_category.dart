import 'package:dio/dio.dart';
import 'package:on_budget/src/utils/helper/api/home_urls.dart';
import 'package:on_budget/src/modules/home/data/models/products_model.dart';

class GetProductsByCategory {
  final Dio dio;
  GetProductsByCategory({
    required this.dio,
  });

  Future<ProductsModel> getProductsByCategory(
      {required String category}) async {
    try {
      Response response =
          await dio.get(HomeApiUrls(category: category).getProductsByCategory());
      return ProductsModel.fromJson(response.data);
    } on Exception catch (e) {
      throw Exception(
          'there was an error ,please try again and the errror is: $e');
    }
  }
}
