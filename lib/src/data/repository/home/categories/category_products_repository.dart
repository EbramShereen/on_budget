import 'package:on_budget/src/data/models/home/products_by_category_model.dart';
import 'package:on_budget/src/data/service/home/home_categories/category_product_service.dart';

class CategoryProductsRepository {
  final CategoryProductsService categoryProductService;

  CategoryProductsRepository(
      {required this.categoryProductService, required this.category});
  String category;
  Future<List<ProductModel>> getCategoryProducts() async {
    final result = await categoryProductService.getWatchesCategoryService(
        category: category);
    final List<ProductModel> productsList = [];
    for (var product in result['products']) {
      productsList.add(ProductModel.fromJson(product));
    }

    return productsList;
  }
}
