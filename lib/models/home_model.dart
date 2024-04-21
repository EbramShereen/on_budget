// Defines a model for representing home page items in the application.
class HomeModel {
  // Constructor for HomeModel requiring all properties to be initialized.
  HomeModel({
    required this.title, // Title of the item.
    required this.category, // Category to which the item belongs.
    required this.description, // Description of the item.
    required this.image, // Image URL or path for the item.
    required this.price, // Price of the item.
    required this.rate, // Rating object containing rate value and count.
  });

  // Properties of the HomeModel class.
  final String title; // Holds the title of the item.
  final double price; // Holds the price of the item.
  final String description; // Holds the description of the item.
  final String category; // Holds the category of the item.
  final String image; // Holds the image URL or path of the item.
  final Rating
      rate; // Holds the rating of the item, encapsulated in a Rating object.
}

// Represents the rating details of an item, including the average rate and count of reviews.
class Rating {
  // The average rating value for the item.
  double rate;
  // The total number of reviews contributing to the rating.
  double count;

  // Constructor requiring initialization of both rate and count.
  Rating({required this.rate, required this.count});
}
