import 'dart:developer';

import 'package:on_budget/src/data/repository/register/supplier/supplier_response_repository.dart';

import '../../../models/register/supplier_model.dart';
import '../../../service/register/supplier/supplier_service.dart';
import '../../../../utils/helper/constants/api.dart';

class SupplierRepository {
  SupplierService supplierService;
  SupplierRepository({
    required this.supplierService,
  });
  Future<SupplierResponseRepository> supplierRepository(
      {required Map<String, String> supplierData}) async {
    try {
      final response = await supplierService.supplierService(
          url: RegisterApi.supplierSignUp, supplierData: supplierData);
      log(response.toString());
      String email = response;
      final supplierModel = SupplierModel(
          firstName: supplierData['firstName']!,
          lastName: supplierData['lastName']!,
          handle: supplierData['handle']!,
          phoneNumber: supplierData['phoneNumber']!,
          password: supplierData['password']!,
          companyName: supplierData['companyName']!);
      return SupplierResponseRepository(
          email: email, supplierModel: supplierModel);
    } on Exception catch (e) {
      throw Exception(
          'there was an error in the supplier repository and the error is $e');
    }
  }
}
