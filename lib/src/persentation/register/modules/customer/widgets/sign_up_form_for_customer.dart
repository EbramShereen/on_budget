import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../custom_widgets/signup_alert_dialog.dart';
import '../../../../../logic/register/customer/customer_cubit.dart';
import '../../../custom_widgets/already_have_account.dart';
import '../../../custom_widgets/confirm_policy.dart';
import 'gender_choice.dart';
import 'signup_textfield_for_customer.dart';
import '../../../../../utils/components/button.dart';
import '../../../../../utils/helper/constants/colors.dart';
import '../../../../../utils/components/background.dart';

class SignUpFormforCustomer extends StatelessWidget {
  SignUpFormforCustomer({Key? key}) : super(key: key);

  final customerFormkey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  // Create a single instance of GenderChoice with a GlobalKey
  final GlobalKey<GenderChoiceState> genderChoiceKey =
      GlobalKey<GenderChoiceState>();
  final GlobalKey<ConfirmPolicyState> confirmPolicykey =
      GlobalKey<ConfirmPolicyState>();

  bool genderIsSelected = false;
  bool isValid = false;
  @override
  Widget build(BuildContext context) {
    return Background(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              const Gap(20),
              GenderChoice(key: genderChoiceKey), // Use the key here
              const Gap(20),
              SignupTextFieldForCustomer(
                formKey: customerFormkey,
                firstNameController: firstNameController,
                lastNameController: lastNameController,
                phoneController: phoneController,
                passwordController: passwordController,
                emailController: emailController,
              ),
              const Gap(20),
              ConfirmPolicy(
                key: confirmPolicykey,
              ),
              const Gap(30),
              Button(
                text: 'Sign Up',
                tap: () {
                  if (customerFormkey.currentState!.validate()) {
                    customerFormkey.currentState!.save();
                    isValid = true;
                  }
                  if (isValid) {
                    final cubit = context.read<CustomerCubit>();
                    final genderState = genderChoiceKey.currentState;
                    final isGenderSelected = genderState?.widget.gender;
                    final isConfirmPolicySelected =
                        confirmPolicykey.currentState?.checkBox ?? false;
                    if (isGenderSelected == null) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const SignUpAlertDialog(
                            text: 'Please choose your gender type',
                            button: 'Okaaay',
                          );
                        },
                      );
                    } else if (isConfirmPolicySelected == false) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const SignUpAlertDialog(
                            text: 'Accept to our Terms and Policies',
                            button: 'Okaaay',
                          );
                        },
                      );
                    } else if (isGenderSelected == 'man' ||
                        isGenderSelected == 'woman' ||
                        isConfirmPolicySelected == true ||
                        isValid == true) {
                      log('$isValid');
                      cubit.customerCubit(customerData: {
                        "firstName": firstNameController.text.toLowerCase(),
                        "lastName": lastNameController.text.toLowerCase(),
                        "handle": emailController.text.toLowerCase(),
                        "gender": isGenderSelected.toLowerCase(),
                        "phoneNumber": phoneController.text,
                        "address": '',
                        "password": passwordController.text
                      });
                    }
                  }
                },
                width: 220.w,
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
    );
  }
}
