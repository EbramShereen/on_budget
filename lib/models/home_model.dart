class HomeModel {
  HomeModel(
      {required this.title,
      required this.category,
      required this.description,
      required this.image,
      required this.price,
      required this.rate});

  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final Rating rate;
}

class Rating {
  final double rate;
  final double count;

  Rate({required this.rate, required this.count});
}
