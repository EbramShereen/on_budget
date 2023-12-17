import 'package:flutter/material.dart';

import 'package:on_budget/views/splash/splash_two.dart';

import 'package:on_budget/widgets/splash/splash.dart';

class SplashOne extends StatelessWidget {
  const SplashOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Splash(
      imageUrl: 'lib/assets/splash/splash_two/splash2.png',
      text1: 'Welcome to OnBudget',
      text2: 'The Easiest way to explore',
      text3: ' the wold of fashion',
      tap: () {
        Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SplashTwo(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const Offset begin = Offset(1.5, 0.0);
            const Offset end = Offset.zero;
            const Curve curve = Curves.easeInOut;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(position: offsetAnimation, child: child);
          },
        ));
      },
      slideUrl: 'lib/assets/splash/splash_one/slide.svg',
    );
  }
}
