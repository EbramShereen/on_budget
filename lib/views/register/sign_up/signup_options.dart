import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/components/background.dart';

import 'package:on_budget/components/button.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';
import 'package:on_budget/views/register/login/login.dart';
import 'package:on_budget/views/register/sign_up/signup_with_email.dart';
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
            padding: EdgeInsets.all(MediaQuerySizes.getWidth(context) * .05),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.all(
                    Radius.circular(MediaQuerySizes.getWidth(context) * .1)),
              ),
              child: Column(
                children: [
                  Gap(MediaQuerySizes.getHeight(context) * .1),
                  Text(
                    'Please select a preferred',
                    style: TextStyle(
                        fontSize: MediaQuerySizes.getWidth(context) * .06,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'option of your choice. ',
                    style: TextStyle(
                        fontSize: MediaQuerySizes.getWidth(context) * .06,
                        fontWeight: FontWeight.w400),
                  ),
                  Gap(
                    MediaQuerySizes.getHeight(context) * .03,
                  ),
                  Button(
                      colorTxt: kSecondaryColor,
                      colorBtn: kPrimaryColor,
                      width: MediaQuerySizes.getWidth(context) * .25,
                      height: MediaQuerySizes.getHeight(context) * .06,
                      textSize: MediaQuerySizes.getWidth(context) * .055,
                      text: 'Email',
                      tap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpWithEmail(),
                          ))),
                  Gap(MediaQuerySizes.getHeight(context) * .06),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextDivider.horizontal(
                        text: const Text(
                          'Or Continue With',
                          style: TextStyle(color: kHintColor, fontSize: 15),
                        ),
                        thickness: .9,
                      )),
                  Gap(MediaQuerySizes.getHeight(context) * .06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SignupWithSocial(
                        imageurl: kFacebookIcon,
                        width: MediaQuerySizes.getWidth(context) * .2,
                        height: MediaQuerySizes.getHeight(context) * .05,
                        tap: () {},
                      ),
                      const Gap(20),
                      SignupWithSocial(
                        imageurl:
                            'lib/assets/register/register_options/google-color-svgrepo-com.svg',
                        width: MediaQuerySizes.getWidth(context) * .2,
                        height: MediaQuerySizes.getHeight(context) * .05,
                        tap: () {},
                      ),
                      const Gap(20),
                      SignupWithSocial(
                        imageurl: 'lib/assets/register/register_options/x.svg',
                        width: MediaQuerySizes.getWidth(context) * .2,
                        height: MediaQuerySizes.getHeight(context) * .05,
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
