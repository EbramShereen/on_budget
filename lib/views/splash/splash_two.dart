import 'package:flutter/material.dart';
import 'package:on_budget/views/splash/splash_three.dart';
import 'package:on_budget/widgets/splash/splash.dart';

class SplashTwo extends StatelessWidget {
  const SplashTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Splash(
      imageUrl: 'lib/assets/splash/splash_two/splash2.png',
      text1: 'Easy Track Order',
      text2: 'control every',
      text3: 'shipping option',
      tap: () {
        Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SplashThree(),
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
      slideUrl: 'lib/assets/splash/splash_two/slide.svg',
    );
  }
}
