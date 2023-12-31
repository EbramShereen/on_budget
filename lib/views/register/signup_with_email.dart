import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/assets/colors/colors.dart';
import 'package:on_budget/components/button.dart';
import 'package:on_budget/components/background.dart';
import 'package:on_budget/widgets/register/signup_with_email.dart/already_have_account.dart';
import 'package:on_budget/widgets/register/signup_with_email.dart/confirm_policy.dart';
import 'package:on_budget/widgets/register/signup_with_email.dart/customer_store_choice.dart';
import 'package:on_budget/widgets/register/signup_with_email.dart/gender_choice.dart';
import 'package:on_budget/widgets/register/signup_with_email.dart/signup_textfield.dart';

class SignUpWithEmail extends StatelessWidget {
  const SignUpWithEmail({super.key});

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
                Button(
                  text: 'Sign Up',
                  tap: () {},
                  width: 280,
                  colorBtn: AppColors.primaryBtn,
                  colorTxt: AppColors.secondaryText,
                  height: 50,
                  textSize: 20,
                ),
                const Gap(10),
                const AlreadyHaveAccount(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
