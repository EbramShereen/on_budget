import 'package:on_budget/src/data/models/cart/cart_model.dart';

class AddToCartStates {}

class AddToCartInitial extends AddToCartStates {}

class AddToCartWaiting extends AddToCartStates {}

class AddToCartSuccess extends AddToCartStates {
  final OrderModel orderModel;
  final int id;

  AddToCartSuccess({required this.orderModel,required this.id});
}

class AddToCartFailure extends AddToCartStates {
  final String error;

  AddToCartFailure({required this.error});
}
