import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/views/generate_image/generate_t-shirt.dart';
import 'package:on_budget/views/home/home.dart';
import 'package:on_budget/views/register/login/login.dart';
import 'package:on_budget/views/register/sign_up/account_created.dart';
import 'package:on_budget/views/register/sign_up/email_verification.dart';
import 'package:on_budget/views/register/login/forget_password.dart';
import 'package:on_budget/views/register/sign_up/signup_options.dart';
import 'package:on_budget/views/register/sign_up/signup_with_email.dart';
import 'package:on_budget/views/register/sign_up/store_or_customer.dart';
import 'package:on_budget/views/splash/on_boarding.dart';
import 'package:on_budget/views/splash/on_boarding_language.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const OnBudget()));
}

class OnBudget extends StatelessWidget {
  const OnBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      routes: routes,
      initialRoute: OnBoardingScreens.id,
      // localizationsDelegates: const [
      //   S.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: S.delegate.supportedLocales,
    );
  }
}

// theme
ThemeData theme() {
  return ThemeData(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    fontFamily: GoogleFonts.playfairDisplay().fontFamily,
    appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(),
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 22),
      elevation: 0,
      backgroundColor: kPrimaryColor,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}

// routes
Map<String, WidgetBuilder> get routes {
  return {
    Home.id: (context) => const Home(),
    GenerateTshirt.id: (context) => const GenerateTshirt(),
    Login.id: (context) => const Login(),
    AccountCreated.id: (context) => const AccountCreated(),
    EmailVerification.id: (context) => const EmailVerification(),
    SignupOptions.id: (context) => const SignupOptions(),
    SignUpWithEmail.id: (context) => const SignUpWithEmail(),
    OnBoardingScreens.id: (context) => const OnBoardingScreens(),
    ForgetPassword.id: (context) => const ForgetPassword(),
    OnBoardingLanguage.id: (context) => const OnBoardingLanguage(),
    StoreOrCustomer.id: (context) => const StoreOrCustomer()
  };
}
