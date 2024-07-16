import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_budget/src/data/repository/register/supplier/supplier_repository.dart';
import 'package:on_budget/src/logic/register/supplier/supplier_states.dart';

class SupplierCubit extends Cubit<SupplierStates> {
  final SupplierRepository supplierRepository;
  SupplierCubit({required this.supplierRepository}) : super(SupplierInitial());
  Future<void> supplierCubit({required Map<String, String> data}) async {
    emit(SupplierWaiting());
    try {
      final result =
          await supplierRepository.supplierRepository(supplierData: data);
      log('result in cubit$result');
      emit(SupplierSuccess(
          supplierModel: result.supplierModel, email: result.email));
    } catch (e) {
      emit(
        SupplierFailure(
          exception: Exception(
              'there was an exception and the exception code is ${e.toString()}'),
        ),
      );
    }
  }
}
