import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/components/background.dart';

import 'package:on_budget/components/button.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/views/login/login.dart';
import 'package:on_budget/views/register/signup_with_email.dart';
import 'package:on_budget/widgets/register/signup_options/signup_social_icons.dart';
import 'package:text_divider/text_divider.dart';

class SignupOptions extends StatelessWidget {
  const SignupOptions({super.key});
  static String id = 'SignupOptions';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
        ),
        body: Background(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              width: 500,
              height: 700,
              child: Column(
                children: [
                  const Gap(150),
                  const Text(
                    'Please select a preferred',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    'option of your choice. ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const Gap(20),
                  Button(
                      colorTxt: kSecondaryColor,
                      colorBtn: kPrimaryColor,
                      width: 85,
                      height: 40,
                      textSize: 20,
                      text: 'Email',
                      tap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpWithEmail(),
                          ))),
                  const Gap(30),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextDivider.horizontal(
                        text: const Text(
                          'Or Continue With',
                          style: TextStyle(color: kHintColor, fontSize: 15),
                        ),
                        thickness: .9,
                      )),
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SignupWithSocial(
                        imageurl:
                            'lib/assets/register/register_options/facebook-1-svgrepo-com.svg',
                        width: 40,
                        height: 40,
                        tap: () {},
                      ),
                      const Gap(20),
                      SignupWithSocial(
                        imageurl:
                            'lib/assets/register/register_options/google-color-svgrepo-com.svg',
                        width: 40,
                        height: 40,
                        tap: () {},
                      ),
                      const Gap(20),
                      SignupWithSocial(
                        imageurl: 'lib/assets/register/register_options/x.svg',
                        width: 40,
                        height: 40,
                        tap: () {},
                      ),
                    ],
                  ),
                  const Gap(90),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor,
                        ),
                      ),
                      const Gap(5),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            )),
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kLoginText),
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
                  const Text(
                    'Our Terms of Use & Privacy Policy.',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF1C2340),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
