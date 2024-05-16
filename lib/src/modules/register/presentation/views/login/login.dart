import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/components/button.dart';
import '../../../../../utils/components/mini_background.dart';
import '../../../../../utils/helper/constants/colors.dart';
import '../../../../../utils/helper/functions/responsive.dart';
import '../../../../home/presentation/views/home.dart';
import 'forget_password.dart';
import '../../widgets/login/login_text_field.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: kThirdColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              width: 400,
              height: 420,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome Back!',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      'Sign in to continue',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(10),
                    Column(
                      children: [
                        LoginTextField(
                          hint: 'Enter Your Email',
                          icon: const Icon(
                            Icons.mail_outline,
                            color: kPrimaryColor,
                          ),
                        ),
                        const Gap(10),
                        LoginTextField(
                          hint: 'Enter Your Password',
                          icon: const Icon(
                            Icons.lock_outlined,
                            color: kPrimaryColor,
                          ),
                        ),
                        const Gap(20),
                        Row(
                          children: [
                            const Gap(20),
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
                              style: TextStyle(fontSize: 20),
                            ),
                            const Gap(20),
                            GestureDetector(
                              onTap: () => Navigator.pushNamed(
                                  context, ForgetPassword.id),
                              child: const Text(
                                'Forget password ?',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF340CB9),
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        const Gap(10),
                        Button(
                          width: 300,
                          height: 50,
                          colorBtn: kPrimaryColor,
                          tap: () => Navigator.pushNamed(context, Home.id),
                          colorTxt: kSecondaryColor,
                          text: 'Sign In',
                          textSize: 18,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
