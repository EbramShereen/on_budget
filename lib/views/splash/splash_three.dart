import 'package:flutter/material.dart';
import 'package:on_budget/views/splash/splash_login_screen.dart';
import 'package:on_budget/widgets/splash/splash.dart';

class SplashThree extends StatelessWidget {
  const SplashThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Splash(
        imageUrl: 'lib/assets/splash/splash_three/splash3.png',
        text1: 'Door to Door Delivery',
        text2: 'Get your shopping done',
        text3: 'quickly just a few taps',
        tap: () {
          Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const SplashLoginScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
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
        slideUrl: 'lib/assets/splash/splash_three/slide.svg');
  }
}
