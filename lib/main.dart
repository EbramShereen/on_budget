import 'package:flutter/material.dart';
import 'package:on_budget/views/splash/splash_one.dart';

void main() {
  runApp(const OnBudget());
}

class OnBudget extends StatelessWidget {
  const OnBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashOne(),
      theme: ThemeData(fontFamily: 'Roboto'),
    );
  }
}
