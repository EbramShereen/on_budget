// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:on_budget/src/data/models/register/supplier_model.dart';

class SupplierStates {}

class SupplierInitial extends SupplierStates {}

class SupplierWaiting extends SupplierStates {}

class SupplierSuccess extends SupplierStates {
  SupplierModel supplierModel;
  String email;
  SupplierSuccess({
    required this.supplierModel,
    required this.email,
  });
}

class SupplierFailure extends SupplierStates {
  final Exception exception;

  SupplierFailure({required this.exception});
}
