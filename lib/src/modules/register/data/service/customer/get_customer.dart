// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:dio/dio.dart';
// import 'package:on_budget/src/utils/helper/api/register.dart';
// import 'package:on_budget/src/modules/register/data/models/customer/customer_register_model.dart';

// class GetCustomerService {
//   Dio dio;
//   GetCustomerService({
//     required this.dio,
//   });
//   Future<CustomerRegisterModel> getCustomer({
//     required String password,
//     required String username,
//   }) async {
//     try {
//       Response response = await dio.get(
//         RegisterApis.addCustomer,
//       );
//       return response.data;
//     } on Exception catch (e) {
//       throw Exception(
//           "there was an error and please try again, the error is $e");
//     }
//   }
// }
