import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_budget/src/persentation/home/views/home.dart';
import 'package:on_budget/src/data/repository/register/login/login_repository.dart';
import 'package:on_budget/src/data/service/register/login/login_service.dart';
import 'package:on_budget/src/logic/register/login/login_cubit.dart';
import 'package:on_budget/src/logic/register/login/login_state.dart';
import 'package:on_budget/src/persentation/register/modules/login/widgets/login_form.dart';
import 'package:on_budget/src/utils/components/failure_dialouge.dart';
import 'package:on_budget/src/utils/components/waiting_progress_loader.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static String id = 'LoginScreen';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool valueCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginCubit(LoginRepository(loginService: LoginService())),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Sign in'),
          ),
          body: BlocConsumer<LoginCubit, LoginStates>(
            listener: (context, state) {
              if (state is LoginWaitingState) {
                const WaitingProgressLoader();
              } else if (state is LoginSuccessState) {
                Navigator.pushNamed(context, HomeView.id);
              } else if (state is LoginFailureState) {
                // showDialog(
                //   context: context,
                //   builder: (context) => const FailureDialouge(),
                // );

                Navigator.pushNamed(context, HomeView.id);
              }
            },
            builder: (context, state) {
              return const Loginform();
            },
          )),
    );
  }
}
