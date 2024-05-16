class HomeApiUrls {
  String? category;
  int? id;

  HomeApiUrls({
    this.category = 'default_category',
    this.id,
  });

  static String baseUrl = 'https://fakestoreapi.com';
  String getProductsByCategory() => '$baseUrl/products/category/$category';
  static String getAllProducts = '$baseUrl/products';
  String getProductsById() => '$baseUrl/products/$id';
}