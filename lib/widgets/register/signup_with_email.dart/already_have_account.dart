import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/views/login/login.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account?  ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Login(),
            ),
          ),
          child: const Text(
            'Sign in !',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w900,
              color: kPrimaryColor,
            ),
          ),
        ),
        const Gap(20),
      ],
    );
  }
}
