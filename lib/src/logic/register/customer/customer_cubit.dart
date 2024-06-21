import 'dart:developer';

import 'package:bloc/bloc.dart';

import '../../../data/repository/register/customer/customer_repository.dart';
import 'customer_state.dart';

class CustomerCubit extends Cubit<CustomerStates> {
  final CustomerRepository customerRepository;

  CustomerCubit(this.customerRepository) : super(CustomerInitial());

  Future<void> customerCubit(
      {required Map<String, String> customerData}) async {
    emit(CustomerWaiting());
    try {
      final result = await customerRepository.customerRepository(
          customerData: customerData);
      log('response of cubit $result');
      emit(CustomerSuccess(customerModel: result.customerModel, id: result.id));
    } catch (e) {
      log('exception of cubit ${e.toString()}');
      emit(CustomerFailure(e.toString()));
    }
  }
}
