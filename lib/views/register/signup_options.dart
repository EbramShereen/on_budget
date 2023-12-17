import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:gap/gap.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/shape/gf_icon_button_shape.dart';

import 'package:on_budget/assets/colors/colors.dart';

class SignupOptions extends StatelessWidget {
  const SignupOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
          color: AppColors.primaryColor,
          width: double.infinity,
          height: double.infinity,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: AppColors.secondaryColor),
              child: Column(
                children: [
                  const Gap(150),
                  const Text(
                    'Please select a preferred',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    'option of your choice. ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        fixedSize: const Size(250, 35),
                        backgroundColor: AppColors.primaryColor),
                    child: const Text('Email'),
                  ),
                  const Gap(30),
                  const Text(
                    "OR",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                  const Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlutterSocialButton(
                        onTap: () {},
                        mini: true,
                        buttonType: ButtonType.google,
                      ),
                      const Gap(20),
                      FlutterSocialButton(
                        onTap: () {},
                        mini: true,
                        buttonType: ButtonType.facebook,
                      ),
                      const Gap(20),
                      FlutterSocialButton(
                        onTap: () {},
                        mini: true,
                        buttonType: ButtonType.apple,
                      ),
                    ],
                  ),
                  const Gap(150),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryText),
                      ),
                      const Gap(5),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.loginText),
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                  const Divider(
                    thickness: 1,
                    indent: 140,
                    endIndent: 160,
                  ),
                  Text(
                    'Our Terms of Use & Privacy Policy.',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.ourTermsOfUse,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ))),
    );
  }
}
