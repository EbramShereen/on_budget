import '../../../data/models/register/customer_model.dart';

abstract class CustomerStates {}

class CustomerInitial extends CustomerStates {}

class CustomerWaiting extends CustomerStates {}

class CustomerSuccess extends CustomerStates {
  final CustomerModel customerModel;
  final int id;

  CustomerSuccess({
    required this.customerModel,
    required this.id,
  });
}

class CustomerFailure extends CustomerStates {
  final String error;

  CustomerFailure(this.error);
}
