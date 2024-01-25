import 'package:dio/dio.dart';
import 'package:on_budget/models/home_model.dart';

class ProductsApi {
  Dio dio;

  ProductsApi(this.dio);

  Future<List<HomeModel>> getHomeProducts() async {
    try {
      final response = await dio.get('https://fakestoreapi.com/products');
      List<dynamic> data = response.data;

      List<HomeModel> products = [];
      for (var element in data) {
        products.add(HomeModel(
          title: element['title'],
          category: element['category'],
          description: element['description'],
          image: element['image'],
          price: (element['price'] ?? 0.0).toDouble(),
          rate: (element['rating']['rate'] ?? 0.0).toDouble(),
          count: element['rating']['count'] ?? 0,
        ));
      }
      return products;
    } catch (e) {
      // Handle errors here (e.g., DioError)
      print('Error fetching data: $e');
      return [];
    }
  }
}
