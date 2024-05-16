// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:dio/dio.dart';
// import 'package:on_budget/src/utils/helper/api/register.dart';
// import 'package:on_budget/src/modules/register/data/models/customer/customer_register_model.dart';

// class AddCustomerService {
//   Dio dio;
//   AddCustomerService({
//     required this.dio,
//   });
//   Future<CustomerRegisterModel> addCustomer({
//     required String firstName,
//     required String lastName,
//     required String email,
//     required String phone,
//     required String password,
//     required String username,
//   }) async {
//     try {
//       Response response = await dio.post(
//         RegisterApis.addCustomer,
//         data: {
//           "email": email,
//           "username": username,
//           "password": password,
//           "name": {
//             "firstname": firstName,
//             "lastname": lastName,
//           },
//           "phone": phone,
//         },
//       );
//       return CustomerRegisterModel.fromJson(response.data);
//     } on Exception catch (e) {
//       throw Exception(
//           "there was an error and please try again, the error is $e");
//     }
//   }
// }
