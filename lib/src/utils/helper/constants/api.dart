const String baseUrl = 'https://0a7a-156-209-69-167.ngrok-free.app';

//register
class RegisterApi {
  static const String addCustomer = '$baseUrl/users';
  String updateCustomer({required int number}) => '$baseUrl/users/$number';
}
