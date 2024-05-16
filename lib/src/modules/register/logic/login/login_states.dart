
class LoginStates {}

class LoginInitialData extends LoginStates {}

class LoginDataHasLoaded extends LoginStates {}

class LoginrDataFailed extends LoginStates {
  LoginrDataFailed({required this.exception});
  String exception;
  String exceptionMessage() =>
      'there was an error , please try again and the error message is $exception';
}
