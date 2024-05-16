// import 'package:dio/dio.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:on_budget/src/modules/register/data/models/customer/customer_register_model.dart';
// import 'package:on_budget/src/modules/register/data/service/customer/add_customer.dart';
// import 'package:on_budget/src/modules/register/logic/add_customer/register_state.dart';

// class AddCustomerCubit extends Cubit<AddCustomerStates> {
//   AddCustomerCubit() : super(AddCustomerInitialData());
//   late CustomerRegisterModel customerRegisterModel;
//   addCustomer({
//     required String email,
//     required String username,
//     required String password,
//     required String firstName,
//     required String lastName,
//     required String phone,
//   }) async {
//     try {
//       customerRegisterModel = await AddCustomerService(dio: Dio()).addCustomer(
//           firstName: firstName,
//           lastName: lastName,
//           email: email,
//           phone: phone,
//           password: password,
//           username: username);
//       emit(AddCustomerDataHasLoaded(
//           customerRegisterModel: customerRegisterModel));
//     } on Exception catch (e) {
//       emit(AddCustomerrDataFailed(exception: e.toString()));
//     }
//   }
// }
