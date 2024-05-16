import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:text_divider/text_divider.dart';

import '../../../../../utils/components/background.dart';
import '../../../../../utils/components/button.dart';
import '../../../../../utils/helper/auth/google_auth.dart';
import '../../../../../utils/helper/constants/colors.dart';
import '../../../../../utils/helper/constants/images.dart';
import '../../widgets/sign_up/signup_options/signup_social_icons.dart';
import '../login/login.dart';
import 'store_or_customer.dart';
import 'dart:io' show Platform;

class SignupOptions extends StatefulWidget {
  const SignupOptions({super.key});
  static String id = 'SignupOptions';

  @override
  State<SignupOptions> createState() => _SignupOptionsState();
}

class _SignupOptionsState extends State<SignupOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Background(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const Gap(80),
                const Text(
                  'Please select a preferred',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
                const Text(
                  'option of your choice. ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
                const Gap(40),
                Button(
                    colorTxt: kSecondaryColor,
                    colorBtn: kPrimaryColor,
                    width: 100,
                    height: 60,
                    textSize: 25,
                    text: 'Email',
                    tap: () =>
                        Navigator.pushNamed(context, StoreOrCustomer.id)),
                const Gap(50),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextDivider.horizontal(
                      text: const Text(
                        'Or Continue With',
                        style: TextStyle(color: kHintColor, fontSize: 15),
                      ),
                      thickness: .9,
                    )),
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignupWithSocial(
                      imageurl: kFacebookIcon,
                      width: 75,
                      height: 75,
                      tap: () {},
                    ),
                    const Gap(20),
                    SignupWithSocial(
                      imageurl: Platform.isAndroid ? kGoogleIcon : kAppleIcon,
                      width: 75,
                      height: 75,
                      tap: () async {
                        signInWithGoogle();
                      },
                    ),
                    const Gap(20),
                    SignupWithSocial(
                      imageurl: kXIcon,
                      width: 75,
                      height: 75,
                      tap: () {},
                    ),
                  ],
                ),
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                    const Gap(10),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          )),
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF78AAF4)),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                const Divider(
                  thickness: 1,
                  indent: 150,
                  endIndent: 150,
                ),
                const Gap(20),
                const Text(
                  'Our Terms of Use & Privacy Policy.',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF1C2340),
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
