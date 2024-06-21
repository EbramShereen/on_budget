
class OrderModel {
  DateTime orderDate;
  DateTime requiredDate;
  double totalPrice;
  int quantity;
  int customerId;
  List<int> productIds;

  OrderModel({
    required this.orderDate,
    required this.requiredDate,
    required this.totalPrice,
    required this.quantity,
    required this.customerId,
    required this.productIds,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
   return OrderModel(
      orderDate : json['orderDate'],
      requiredDate : json['requiredDate'],
      totalPrice : json['totalPrice'],
      quantity : json['quantity'],
      customerId : json['customerId'],
      productIds : json['productIds'],
    );
  }
}
