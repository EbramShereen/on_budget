import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/components/button.dart';
import '../../../utils/helper/constants/colors.dart';

class SignUpAlertDialog extends StatelessWidget {
  const SignUpAlertDialog({
    super.key,
    required this.text,
    required this.button,
  });
  final String text, button;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
      actions: [
        Center(
          child: Button(
            tap: () => Navigator.pop(context),
            text: button,
            width: 150.w,
            colorBtn: kPrimaryColor,
            colorTxt: kSecondaryColor,
            height: 50,
            textSize: 20,
          ),
        )
      ],
    );
  }
}
