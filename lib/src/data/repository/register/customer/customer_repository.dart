import 'package:on_budget/src/data/models/register/customer_model.dart';
import 'package:on_budget/src/data/repository/register/customer/customer_response_repository.dart';
import 'package:on_budget/src/data/service/register/customer/customer_service.dart';
import 'package:on_budget/src/utils/helper/constants/api.dart';

class CustomerRepository {
  final CustomerService customerService;

  CustomerRepository(this.customerService);

  Future<CustomerResponseRepository> customerRepository({
    required Map<String, String> customerData,
  }) async {
    final response = await customerService.post(
      url: RegisterApi.customerSignUp,
      customerData: customerData,
    );
    int id = response;
    final customerModel = CustomerModel(
      firstName: customerData['firstName']!,
      lastName: customerData['lastName']!,
      handle: customerData['handle']!,
      phoneNumber: customerData['phoneNumber']!,
      password: customerData['password']!,
      gender: customerData['gender']!,
      address: customerData['address'] ?? '',
    );
    return CustomerResponseRepository(id: id, customerModel: customerModel);
  }
}
