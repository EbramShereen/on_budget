import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:on_budget/components/button.dart';
import 'package:on_budget/components/mini_background.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';
import 'package:on_budget/views/home/home.dart';
import 'package:on_budget/views/register/login/forget_password.dart';
import 'package:on_budget/widgets/register/login/login_text_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static String id = 'LoginScreen';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool valueCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
      ),
      body: MiniBackground(
        child: Row(
          children: [
            Gap(MediaQuerySizes.getWidth(context) * .07),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(MediaQuerySizes.getHeight(context) * .2),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: MediaQuerySizes.getWidth(context) * .08,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Sign in to continue',
                  style: TextStyle(
                    fontSize: MediaQuerySizes.getWidth(context) * .05,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Gap(MediaQuerySizes.getHeight(context) * .01),
                Container(
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(MediaQuerySizes.getWidth(context) * .05),
                    ),
                  ),
                  width: MediaQuerySizes.getWidth(context) * .9,
                  height: MediaQuerySizes.getHeight(context) * .4,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuerySizes.getWidth(context) * .03,
                          right: MediaQuerySizes.getWidth(context) * .05,
                          top: MediaQuerySizes.getHeight(context) * .02,
                        ),
                        child: LoginTextField(
                          hint: 'Enter Your Email',
                          icon: const Icon(
                            Icons.mail_outline,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuerySizes.getWidth(context) * .03,
                          right: MediaQuerySizes.getWidth(context) * .05,
                          top: MediaQuerySizes.getHeight(context) * .02,
                        ),
                        child: LoginTextField(
                          hint: 'Enter Your Password',
                          icon: const Icon(
                            Icons.lock_outlined,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      Gap(MediaQuerySizes.getHeight(context) * .02),
                      Row(
                        children: [
                          Gap(MediaQuerySizes.getWidth(context) * .05),
                          Checkbox(
                            value: valueCheckbox,
                            activeColor: (kPrimaryColor),
                            onChanged: (value) {
                              setState(() {
                                valueCheckbox = value!;
                              });
                            },
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(
                                fontSize:
                                    MediaQuerySizes.getWidth(context) * .04),
                          ),
                          Gap(MediaQuerySizes.getWidth(context) * .04),
                          GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, ForgetPassword.id),
                            child: Text(
                              'Forget password ?',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuerySizes.getWidth(context) * .03,
                                  color: const Color(0xFF340CB9),
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                      Gap(MediaQuerySizes.getHeight(context) * .01),
                      Button(
                        width: MediaQuerySizes.getWidth(context) * .6,
                        height: MediaQuerySizes.getWidth(context) * .1,
                        colorBtn: kPrimaryColor,
                        tap: () => Navigator.pushNamed(context, Home.id),
                        colorTxt: kSecondaryColor,
                        text: 'Sign In',
                        textSize: MediaQuerySizes.getWidth(context) * .04,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
