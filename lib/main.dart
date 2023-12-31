import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:on_budget/assets/colors/colors.dart';
import 'package:on_budget/views/generate_image/generate_t-shirt.dart';
import 'package:on_budget/views/register/signup_with_email.dart';
import 'package:on_budget/views/splash/splash_login_screen.dart';
import 'package:on_budget/views/splash/splash_one.dart';
import 'package:on_budget/widgets/splash/splash_Login.dart';

void main() {
  runApp(const OnBudget());
}

class OnBudget extends StatelessWidget {
  const OnBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GenerateTshirt(),
      theme: ThemeData(
          fontFamily: 'Roboto',
          appBarTheme: AppBarTheme(
            centerTitle: true,
            titleTextStyle: const TextStyle(fontSize: 22),
            elevation: 0,
            backgroundColor: AppColors.primaryColor,
          )),
    );
  }
}
