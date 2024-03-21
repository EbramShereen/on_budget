import 'package:flutter/material.dart';

import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/views/generate_image/generate_t-shirt.dart';
import 'package:on_budget/views/home/home.dart';
import 'package:on_budget/views/login/login.dart';
import 'package:on_budget/views/register/account_created.dart';
import 'package:on_budget/views/register/email_verification.dart';
import 'package:on_budget/views/register/signup_options.dart';
import 'package:on_budget/views/register/signup_with_email.dart';
import 'package:on_budget/views/splash/on_boarding.dart';

void main() {
  runApp(const OnBudget());
  // ProductsApi(Dio());
}

class OnBudget extends StatelessWidget {
  const OnBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Roboto',
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              titleTextStyle: TextStyle(fontSize: 22),
              elevation: 0,
              backgroundColor: kPrimaryColor,
              iconTheme: IconThemeData(color: Colors.white))),
      routes: {
        Home.id: (context) => const Home(),
        GenerateTshirt.id: (context) => const GenerateTshirt(),
        Login.id: (context) => const Login(),
        AccountCreated.id: (context) => const AccountCreated(),
        EmailVerification.id: (context) => const EmailVerification(),
        SignupOptions.id: (context) => const SignupOptions(),
        SignUpWithEmail.id: (context) => const SignUpWithEmail(),
        OnBoardingScreens.id: (context) => const OnBoardingScreens(),
      },
      initialRoute: OnBoardingScreens.id,
    );
  }
}
