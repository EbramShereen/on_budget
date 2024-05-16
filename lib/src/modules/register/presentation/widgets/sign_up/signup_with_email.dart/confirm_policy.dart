import 'package:flutter/material.dart';

import '../../../../../../utils/helper/constants/colors.dart';

class ConfirmPolicy extends StatefulWidget {
  const ConfirmPolicy({Key? key}) : super(key: key);

  @override
  State<ConfirmPolicy> createState() => _ConfirmPolicyState();
}

class _ConfirmPolicyState extends State<ConfirmPolicy> {
  bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: checkBox,
          onChanged: (value) {
            setState(() {
              checkBox ? checkBox = false : checkBox = true;
            });
          },
          activeColor: kPrimaryColor,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'By creating an account you agree to',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'our Terms of Service and Privacy Policy',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
