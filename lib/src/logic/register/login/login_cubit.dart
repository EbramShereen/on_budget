import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_budget/src/data/repository/register/login/login_repository.dart';
import 'package:on_budget/src/logic/register/login/login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  final LoginRepository loginRepository;
  LoginCubit(this.loginRepository) : super(LoginInitialState());
  Future<void> loginCubit(
      {required String username,
      required String password,
      required String userType}) async {
    try {
      emit(LoginWaitingState());

      final result = await loginRepository.loginRepository(
          body: {"username": username, "password": password},
          userType: userType);
      print(result);
      emit(LoginSuccessState(loginModel: result));
      // if (result == 'token_for_${username}_as_supplier' ||
      //     result == 'token_for_${username}_as_supplier') {
      //
      // }
    } catch (e) {
      emit(LoginFailureState(exception: e.toString()));
    }
  }
}
