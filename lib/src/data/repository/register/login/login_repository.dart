// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:on_budget/src/data/models/register/login_model.dart';
import 'package:on_budget/src/data/service/register/login/login_service.dart';

class LoginRepository {
  final LoginService loginService;
  LoginRepository({
    required this.loginService,
  });
  Future<LoginModel> loginRepository(
      {required Map<String, String> body, required String userType}) async {
    try {
      final login =
          await loginService.loginService(body: body, userType: userType);
      return LoginModel.fromJson(login);
    } on Exception catch (e) {
      throw Exception('failed to login: $e');
    }
  }
}
