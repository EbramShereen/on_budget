import 'package:flutter/material.dart';
import 'package:on_budget/views/register/signup_options.dart';
import 'package:on_budget/widgets/splash/splash_Login.dart';

class SplashLoginScreen extends StatelessWidget {
  const SplashLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashLogin(
      imageUrl: 'lib/assets/splash/welcome_login/welcome.png',
      text1: 'Welcome to On Budget',
      text2: 'Deliver your Order around the world',
      text3: 'without hesitation',
      textBtn1: 'Login',
      textBtn2: 'SignUp',
      tapBtn1: () {},
      tapBtn2: () {
        Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SignupOptions(),
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
    );
  }
}
