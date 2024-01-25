class HomeModel {
  HomeModel({
    required this.title,
    required this.category,
    required this.description,
    required this.image,
    required this.price,
    required this.rate,
    required this.count,
  });

  String title;
  double price;
  String description;
  String category;
  String image;
  double rate;
  int count;
}
