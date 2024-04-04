import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:on_budget/components/button.dart';
import 'package:on_budget/components/mini_background.dart';
import 'package:on_budget/helper/constants.dart';
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
            const Gap(30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(135),
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Sign in to continue',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(25),
                Container(
                  decoration: const BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  width: 350,
                  height: 340,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 30, bottom: 15),
                        child: LoginTextField(
                          hint: 'Enter Your Email',
                          icon: const Icon(
                            Icons.mail_outline,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: LoginTextField(
                          hint: 'Enter Your Password',
                          icon: const Icon(
                            Icons.lock_outlined,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      const Gap(15),
                      Row(
                        children: [
                          Checkbox(
                            value: valueCheckbox,
                            activeColor: (kPrimaryColor),
                            onChanged: (value) {
                              setState(() {
                                valueCheckbox = value!;
                              });
                            },
                          ),
                          const Text(
                            'Remember me',
                            style: TextStyle(fontSize: 16),
                          ),
                          const Gap(15),
                          TextButton(
                            onPressed: () => ForgetPassword.id,
                            child: const Text('Forget password ?',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xFF340CB9))),
                          )
                        ],
                      ),
                      const Gap(20),
                      Button(
                        width: 250,
                        height: 50,
                        colorBtn: kPrimaryColor,
                        tap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        ),
                        colorTxt: kSecondaryColor,
                        text: 'Sign In',
                        textSize: 16,
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
