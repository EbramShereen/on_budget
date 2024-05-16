class ProductsModel {
  int? id;
  String? categoryName;
  String? description;
  List<Products>? products;

  ProductsModel({this.id, this.categoryName, this.description, this.products});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['categoryName'];
    description = json['description'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  
}

class Products {
  int? id;
  String? productName;
  String? productDescription;
  int? unitPrice;
  String? color;
  List<Pictures>? pictures;

  Products(
      {this.id,
      this.productName,
      this.productDescription,
      this.unitPrice,
      this.color,
      this.pictures});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['productName'];
    productDescription = json['productDescription'];
    unitPrice = json['unitPrice'];
    color = json['color'];
    if (json['pictures'] != null) {
      pictures = <Pictures>[];
      json['pictures'].forEach((v) {
        pictures!.add(Pictures.fromJson(v));
      });
    }
  }
}

class Pictures {
  String? front;
  String? back;

  Pictures({this.front, this.back});

  Pictures.fromJson(Map<String, dynamic> json) {
    front = json['front'];
    back = json['back'];
  }
}
