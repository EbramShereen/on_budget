import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_budget/src/data/repository/cart/add_to_cart_repository.dart';
import 'package:on_budget/src/logic/cart/add_product/add_to_cart_states.dart';

class AddToCartCubit extends Cubit<AddToCartStates> {
  final AddToCartRepository addToCartRepository;
  AddToCartCubit({
    required this.addToCartRepository,
  }) : super(AddToCartInitial());
  Future<void> addToCart({
    required DateTime orderDate,
    required DateTime requiredDate,
    required double totalPrice,
    required int quantity,
    required int customerId,
    required List<int> productIds,
  }) async {
    try {
      emit(AddToCartWaiting());
      final result = await addToCartRepository.addToCart(
        body: {
          "orderDate": orderDate,
          "requiredDate": requiredDate,
          "totalPrice": totalPrice,
          "quantity": quantity,
          "customerId": customerId,
          "productIds": productIds,
        },
      );
      emit(AddToCartSuccess(orderModel: result.orderModel, id: result.id));
    } on Exception catch (e) {
      emit(AddToCartFailure(error: e.toString()));
    }
  }
}
