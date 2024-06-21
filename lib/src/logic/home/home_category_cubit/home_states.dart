import 'package:on_budget/src/data/models/home/products_by_category_model.dart';

class HomeStates {}

class HomeInitial extends HomeStates {}

class HomeWaiting extends HomeStates {}

class HomeLoaded extends HomeStates {
  final List<ProductModel> products;

  HomeLoaded(this.products);
}

class HomeFailure extends HomeStates {
  final String error;

  HomeFailure(this.error);
}
