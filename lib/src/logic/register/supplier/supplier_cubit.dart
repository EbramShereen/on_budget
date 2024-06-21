import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_budget/src/data/repository/register/supplier/supplier_repository.dart';
import 'package:on_budget/src/logic/register/supplier/supplier_states.dart';

class SupplierCubit extends Cubit<SupplierStates> {
  final SupplierRepository supplierRepository;
  SupplierCubit({required this.supplierRepository}) : super(SupplierInitial());
  Future<void> supplierCubit({
    required String firstName,
    required String lastName,
    required String companyName,
    required String handle,
    required String phoneNumber,
    required String password,
  }) async {
    emit(SupplierWaiting());
    try {
      final result = await supplierRepository.supplierRepository(
        supplierData: {
          'firstName': firstName,
          'lastName': lastName,
          'handle': handle,
          'phoneNumber': phoneNumber,
          'companyName': companyName,
          'password': password
        },
      );
      emit(SupplierSuccess(supplierModel: result));
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
