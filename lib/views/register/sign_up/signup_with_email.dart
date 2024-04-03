import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:on_budget/components/button.dart';
import 'package:on_budget/components/background.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/views/home/home.dart';
import 'package:on_budget/widgets/register/signup_with_email.dart/already_have_account.dart';
import 'package:on_budget/widgets/register/signup_with_email.dart/confirm_policy.dart';
import 'package:on_budget/widgets/register/signup_with_email.dart/customer_store_choice.dart';
import 'package:on_budget/widgets/register/signup_with_email.dart/gender_choice.dart';
import 'package:on_budget/widgets/register/signup_with_email.dart/signup_textfield.dart';

class SignUpWithEmail extends StatefulWidget {
  const SignUpWithEmail({super.key});
  static String id = 'SignUpWithEmail';

  @override
  State<SignUpWithEmail> createState() => _SignUpWithEmailState();
}

class _SignUpWithEmailState extends State<SignUpWithEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Background(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                const Gap(20),
                const GenderChoice(),
                const Gap(10),
                const SignupTextField(),
                const Gap(20),
                const CustomerStoreChoice(),
                const Gap(20),
                const ConfirmPolicy(),
                const Gap(10),
                Button(
                  text: 'Sign Up',
                  tap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      )),
                  width: 220,
                  colorBtn: kPrimaryColor,
                  colorTxt: kSecondaryColor,
                  height: 30,
                  textSize: 20,
                ),
                const Gap(10),
                const AlreadyHaveAccount(),
                const Gap(10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
