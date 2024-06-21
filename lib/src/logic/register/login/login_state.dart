// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:on_budget/src/data/models/register/login_model.dart';

class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginWaitingState extends LoginStates {}

class LoginSuccessState extends LoginStates {
  final LoginModel loginModel;

  LoginSuccessState({required this.loginModel});
}

class LoginFailureState extends LoginStates {
  String exception;
  LoginFailureState({
    required this.exception,
  });
  
}
