class ProductModel {
  final int id;
  final String productName;
  final String productDescription;
  final dynamic unitPrice;
  final String color;
  final String categoryName;
  final String supplierHandle;
  final String frontImage;
  String? backImage;

  ProductModel({
    required this.id,
    required this.productName,
    required this.productDescription,
    required this.unitPrice,
    required this.color,
    required this.categoryName,
    required this.supplierHandle,
    required this.frontImage,
    this.backImage,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      productName: json['productName'],
      productDescription: json['productDescription'],
      unitPrice: json['unitPrice'],
      color: json['color'],
      categoryName: json['categoryName'],
      supplierHandle: json['supplierHandle'],
      frontImage: json['pictures'][0]['front'] ??
          'https://www.aquacalling.com/img/empty.png',
      backImage: json['pictures'][0]['back'] ??
          'https://www.aquacalling.com/img/empty.png',
    );
  }
}
