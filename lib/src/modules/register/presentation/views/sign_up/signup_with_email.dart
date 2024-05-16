import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/modules/register/logic/add_customer/register_cubit.dart';
import 'package:on_budget/src/modules/register/logic/add_customer/register_state.dart';

import '../../../../../utils/components/button.dart';
import '../../../../../utils/components/background.dart';
import '../../../../../utils/helper/constants/colors.dart';
import '../../../../home/presentation/views/home.dart';
import '../../widgets/sign_up/signup_with_email.dart/already_have_account.dart';
import '../../widgets/sign_up/signup_with_email.dart/confirm_policy.dart';
import '../../widgets/sign_up/signup_with_email.dart/gender_choice.dart';
import '../../widgets/sign_up/signup_with_email.dart/signup_textfield.dart';

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
                  const Gap(20),
                  const GenderChoice(),
                  const Gap(20),
                  SignupTextField(
                    formKey: formKey,
                  ),
                  const Gap(20),
                  const ConfirmPolicy(),
                  const Gap(30),
                  Button(
                    text: 'Sign Up',
                    tap: () {
                      // if (formKey.currentState!.validate()) {
                      //   formKey.currentState!.save();
                      // }
                      // BlocProvider.of<AddCustomerCubit>(context)
                      //     .addCustomer(
                      //   email: SignupTextField(formKey: formKey)
                      //       .firstName
                      //       .toString(),
                      //   username: SignupTextField(formKey: formKey)
                      //       .firstName
                      //       .toString(),
                      //   password: SignupTextField(formKey: formKey)
                      //       .firstName
                      //       .toString(),
                      //   firstName: SignupTextField(formKey: formKey)
                      //       .firstName
                      //       .toString(),
                      //   lastName: SignupTextField(formKey: formKey)
                      //       .firstName
                      //       .toString(),
                      //   phone: SignupTextField(formKey: formKey)
                      //       .firstName
                      //       .toString(),
                      // );
                      Navigator.pushNamed(context, Home.id);
                    },
                    width: 220,
                    colorBtn: kPrimaryColor,
                    colorTxt: kSecondaryColor,
                    height: 30,
                    textSize: 20,
                  ),
                  const Gap(20),
                  const AlreadyHaveAccount(),
                ],
              ),
            ],
          ),
        ));
  }
}
