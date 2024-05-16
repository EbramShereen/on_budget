// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:dio/dio.dart';
// import 'package:on_budget/src/utils/helper/api/register.dart';
// import 'package:on_budget/src/modules/register/data/models/customer/customer_register_model.dart';

// class UpdateCustomerService {
//   Dio dio;
//   UpdateCustomerService({
//     required this.dio,
//   });
//   Future<CustomerRegisterModel> updateCustomer(
//     String firstName,
//     String lastName,
//     String email,
//     String phone,
//     String password,
//     String username,
//   ) async {
//     try {
//       Response response = await dio.put(
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
//       return response.data;
//     } on Exception catch (e) {
//       throw Exception(
//           "there was an error and please try again, the error is $e");
//     }
//   }
// }
