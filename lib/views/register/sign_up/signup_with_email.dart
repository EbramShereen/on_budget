import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:on_budget/components/button.dart';
import 'package:on_budget/components/background.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';
import 'package:on_budget/views/home/home.dart';
import 'package:on_budget/widgets/register/sign_up/signup_with_email.dart/already_have_account.dart';
import 'package:on_budget/widgets/register/sign_up/signup_with_email.dart/confirm_policy.dart';
import 'package:on_budget/widgets/register/sign_up/store_or_customer/customer_store_choice.dart';
import 'package:on_budget/widgets/register/sign_up/signup_with_email.dart/gender_choice.dart';
import 'package:on_budget/widgets/register/sign_up/signup_with_email.dart/signup_textfield.dart';

class SignUpWithEmail extends StatefulWidget {
  const SignUpWithEmail({super.key});
  static String id = 'SignUpWithEmail';

  @override
  State<SignUpWithEmail> createState() => _SignUpWithEmailState();
}

GlobalKey<FormState> formKey = GlobalKey();

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
                Gap(MediaQuerySizes.getHeight(context) * .03),
                const GenderChoice(),
                Gap(MediaQuerySizes.getHeight(context) * .01),
                SignupTextField(
                  formKey: formKey,
                ),
                Gap(MediaQuerySizes.getHeight(context) * .025),
                Gap(MediaQuerySizes.getHeight(context) * .02),
                const ConfirmPolicy(),
                Gap(MediaQuerySizes.getHeight(context) * .015),
                Button(
                  text: 'Sign Up',
                  tap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      Navigator.pushNamed(context, Home.id);
                    }
                  },
                  width: 220,
                  colorBtn: kPrimaryColor,
                  colorTxt: kSecondaryColor,
                  height: 30,
                  textSize: 20,
                ),
                Gap(MediaQuerySizes.getHeight(context) * .02),
                const AlreadyHaveAccount(),
                Gap(MediaQuerySizes.getHeight(context) * .03),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
