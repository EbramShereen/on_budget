import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_budget/src/logic/register/login/login_cubit.dart';
import 'package:on_budget/src/persentation/home/views/home.dart';
import 'package:on_budget/src/persentation/register/modules/login/widgets/login_form.dart';
import 'package:on_budget/src/utils/components/button.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Button(
      width: 300.w,
      height: 50,
      colorBtn: kPrimaryColor,
      tap: () {
        // final userType = customerOrSupplierKey.currentState!.widget.userType;
        // log(userType);
        // if (userType != '') {
        //   final cubit = context.read<LoginCubit>();
        //   cubit.loginCubit(
        //     username: emailController.text,
        //     password: passwordController.text,
        //     userType: userType,
        //   );
        // } else if (userType == '') {
        //   showDialog(
        //     context: context,
        //     builder: (context) => AlertDialog(
        //       title: const Text('Choose Customer Or Supplier'),
        //       actions: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Button(
        //                 tap: () => Navigator.pop(context),
        //                 text: 'Okay',
        //                 width: 100.w,
        //                 colorBtn: kPrimaryColor,
        //                 colorTxt: kSecondaryColor,
        //                 height: 50),
        //           ],
        //         ),
        //       ],
        //     ),
        //   );
        // }
        Navigator.pushNamed(context, HomeView.id);
      },
      colorTxt: kSecondaryColor,
      text: 'Sign In',
      textSize: 18,
    );
  }
}
