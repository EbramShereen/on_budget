import 'package:on_budget/src/data/models/cart/cart_model.dart';
import 'package:on_budget/src/data/repository/cart/add_to_cart_response_repository.dart';
import 'package:on_budget/src/data/service/cart/add_to_cart_service.dart';
import 'package:on_budget/src/utils/helper/constants/api.dart';

class AddToCartRepository {
  final AddToCartService addToCartService;

  AddToCartRepository({required this.addToCartService});
  Future<AddToCartResponseRepository> addToCart(
      {required Map<String, dynamic> body}) async {
    final result = await addToCartService.addProductToCart(
      body: body,
      url: OrdersApi().addProductsToOrder,
    );
    final order = OrderModel(
      customerId: body['customerId'],
      orderDate: body['orderDate'],
      requiredDate: body['requiredDate'],
      productIds: body['productIds'],
      quantity: body['quantity'],
      totalPrice: body['totalPrice'],
    );
    final id = result;
    return AddToCartResponseRepository(orderModel: order, id: id);
  }
}
