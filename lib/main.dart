import 'package:flutter/material.dart';
import 'package:on_budget/assets/colors/colors.dart';
import 'package:on_budget/views/home/home.dart';

void main() {
  runApp(const OnBudget());
}

class OnBudget extends StatelessWidget {
  const OnBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
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
