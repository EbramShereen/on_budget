import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/assets/colors/colors.dart';

class SplashLogin extends StatelessWidget {
  SplashLogin({
    Key? key,
    required this.imageUrl,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.tapLogin,
    required this.tapSignup,
  }) : super(key: key);

  String imageUrl;
  String text1;
  String text2;
  String text3;
  VoidCallback tapLogin;
  VoidCallback tapSignup;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: Image.asset(imageUrl),
          ),
          Expanded(
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
                    Text(
                      text2,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Gap(8),
                    Text(
                      text3,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Gap(30),
                    ElevatedButton(
                      onPressed: () {
                        tapLogin();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFFFFF),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enableFeedback: false,
                        fixedSize: const Size(375, 50),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Gap(25),
                    ElevatedButton(
                      onPressed: () {
                        tapSignup();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFFFFF),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enableFeedback: false,
                        fixedSize: const Size(375, 50),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Gap(80),
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
