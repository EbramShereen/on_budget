import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/components/background.dart';

import 'package:on_budget/components/button.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';
import 'package:on_budget/views/register/login/login.dart';
import 'package:on_budget/views/register/sign_up/signup_with_email.dart';
import 'package:on_budget/views/register/sign_up/store_or_customer.dart';
import 'package:on_budget/widgets/register/sign_up/signup_options/signup_social_icons.dart';
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
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuerySizes.getWidth(context) * .05,
              vertical: MediaQuerySizes.getHeight(context) * .02),
          child: Container(
            decoration: const BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Gap(MediaQuerySizes.getHeight(context) * .05),
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
                Gap(MediaQuerySizes.getHeight(context) * .05),
                Button(
                    colorTxt: kSecondaryColor,
                    colorBtn: kPrimaryColor,
                    width: MediaQuerySizes.getWidth(context) * .25,
                    height: MediaQuerySizes.getHeight(context) * .06,
                    textSize: MediaQuerySizes.getWidth(context) * .055,
                    text: 'Email',
                    tap: () =>
                        Navigator.pushNamed(context, StoreOrCustomer.id)),
                Gap(MediaQuerySizes.getHeight(context) * .08),
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuerySizes.getWidth(context) * .1),
                    child: TextDivider.horizontal(
                      text: Text(
                        'Or Continue With',
                        style: TextStyle(
                            color: kHintColor,
                            fontSize:
                                MediaQuerySizes.getWidth(context) * .0355),
                      ),
                      thickness: .9,
                    )),
                Gap(MediaQuerySizes.getHeight(context) * .07),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignupWithSocial(
                      imageurl: kFacebookIcon,
                      width: MediaQuerySizes.getWidth(context) * .2,
                      height: MediaQuerySizes.getHeight(context) * .05,
                      tap: () {},
                    ),
                    Gap(MediaQuerySizes.getWidth(context) * .02),
                    SignupWithSocial(
                      imageurl: kGoogleIcon,
                      width: MediaQuerySizes.getWidth(context) * .2,
                      height: MediaQuerySizes.getHeight(context) * .05,
                      tap: () {},
                    ),
                    Gap(MediaQuerySizes.getWidth(context) * .02),
                    SignupWithSocial(
                      imageurl: kAppleIcon,
                      width: MediaQuerySizes.getWidth(context) * .2,
                      height: MediaQuerySizes.getHeight(context) * .05,
                      tap: () {},
                    ),
                  ],
                ),
                Gap(MediaQuerySizes.getHeight(context) * .1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: MediaQuerySizes.getWidth(context) * .04,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                    Gap(MediaQuerySizes.getWidth(context) * .015),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          )),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: MediaQuerySizes.getWidth(context) * .04,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF78AAF4)),
                      ),
                    ),
                  ],
                ),
                Gap(MediaQuerySizes.getHeight(context) * .02),
                Divider(
                  thickness: 1,
                  indent: MediaQuerySizes.getWidth(context) * .355,
                  endIndent: MediaQuerySizes.getWidth(context) * .4,
                ),
                Text(
                  'Our Terms of Use & Privacy Policy.',
                  style: TextStyle(
                      fontSize: MediaQuerySizes.getWidth(context) * .035,
                      color: const Color(0xFF1C2340),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
