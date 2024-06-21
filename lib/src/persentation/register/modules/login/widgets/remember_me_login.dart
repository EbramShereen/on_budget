
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/persentation/register/modules/login/views/forget_password.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';

class RememberMeLogin extends StatefulWidget {
   RememberMeLogin({super.key});
  bool valueCheckbox = false;
  @override
  State<RememberMeLogin> createState() => _RememberMeLoginState();
}

class _RememberMeLoginState extends State<RememberMeLogin> {
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Gap(20),
        Checkbox(
          value: widget.valueCheckbox,
          activeColor: (kPrimaryColor),
          onChanged: (value) {
            setState(() {
              widget.valueCheckbox = value!;
              
            });
          },
        ),
        const Text(
          'Remember me',
          style: TextStyle(fontSize: 20),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, ForgetPassword.id),
          child: const Text(
            'Forget password ?',
            style: TextStyle(
                fontSize: 14,
                color: Color(0xFF340CB9),
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
