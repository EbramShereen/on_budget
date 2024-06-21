import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/components/background.dart';
import '../../../../../utils/components/button.dart';
import '../../../../../utils/helper/constants/colors.dart';
import '../../../custom_widgets/already_have_account.dart';
import '../../../custom_widgets/confirm_policy.dart';
import '../../../custom_widgets/signup_alert_dialog.dart';
import '../../../../../logic/register/supplier/supplier_cubit.dart';
import 'signup_textfield_for_supplier.dart';

class SignUpFormforSupplier extends StatelessWidget {
  SignUpFormforSupplier({super.key});

  final supplierFormKey = GlobalKey<FormState>();
  final GlobalKey<ConfirmPolicyState> confirmPolicyKey =
      GlobalKey<ConfirmPolicyState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController companyNameController = TextEditingController();
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
              SignupTextFieldForSupplier(
                companyNameController: companyNameController,
                supplierformKey: supplierFormKey,
                firstNameController: firstNameController,
                lastNameController: lastNameController,
                phoneController: phoneController,
                passwordController: passwordController,
                emailController: emailController,
              ),
              const Gap(20),
              ConfirmPolicy(key: confirmPolicyKey),
              const Gap(30),
              Button(
                text: 'Sign Up',
                tap: () {
                  if (supplierFormKey.currentState!.validate()) {
                    supplierFormKey.currentState!.save();
                    isValid = true;
                  }
                  if (isValid) {
                    final isConfirmPolicySelected =
                        confirmPolicyKey.currentState?.checkBox ?? false;
                    if (isConfirmPolicySelected) {
                      final cubit = context.read<SupplierCubit>();
                      cubit.supplierCubit(
                        firstName: firstNameController.text,
                        lastName: lastNameController.text,
                        phoneNumber: phoneController.text,
                        handle: emailController.text,
                        companyName: companyNameController.text,
                        password: passwordController.text,
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const SignUpAlertDialog(
                            text: 'Accept to our Terms and Policies',
                            button: 'Okaaay',
                          );
                        },
                      );
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
