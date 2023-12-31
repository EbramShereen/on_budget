// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/assets/colors/colors.dart';
import 'package:on_budget/components/button.dart';
import 'package:on_budget/views/register/signup_options.dart';

class SplashLogin extends StatelessWidget {
  SplashLogin({
    Key? key,
    required this.imageUrl,
    required this.text1,
    this.text2,
    this.text3,
    required this.tapBtn1,
    required this.tapBtn2,
    required this.textBtn1,
    required this.textBtn2,
    this.registerText,
    this.registerBtn,
  }) : super(key: key);

  String imageUrl;
  String text1;
  String? text2;
  String? text3;
  String textBtn1;
  String textBtn2;
  VoidCallback tapBtn1;
  VoidCallback tapBtn2;
  String? registerText;
  VoidCallback? registerBtn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Image.asset(imageUrl),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color(0xFF006880),
                ),
                child: Column(
                  children: [
                    const Gap(70),
                    Text(
                      text1,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const Gap(17),
                    text2 == null
                        ? const Text('')
                        : Text(
                            text2!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                    const Gap(8),
                    text3 == null
                        ? const Text('')
                        : Text(
                            text3!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                    const Gap(30),
                    Button(
                      textSize: 20,
                      height: 50,
                      text: 'Login',
                      tap: () {},
                      width: 335,
                      colorBtn: AppColors.secondaryBtn,
                      colorTxt: AppColors.primaryText,
                    ),
                    const Gap(25),
                    Button(
                      textSize: 20,
                      height: 50,
                      text: 'Sign Up',
                      tap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupOptions(),
                          )),
                      width: 335,
                      colorBtn: AppColors.secondaryBtn,
                      colorTxt: AppColors.primaryText,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
