import '../../../models/register/supplier_model.dart';
import '../../../service/register/supplier/supplier_service.dart';
import '../../../../utils/helper/constants/api.dart';

class SupplierRepository {
  SupplierService supplierService;
  SupplierRepository({
    required this.supplierService,
  });
  Future<SupplierModel> supplierRepository({
    required  Map<String, String> supplierData}) async {
    final response = await supplierService.supplierService(
        url: RegisterApi.supplierSignUp, supplierData: supplierData);

    return SupplierModel.fromJson(response);
  }
}
