import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_budget/src/utils/components/button.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';

class FailureDialouge extends StatelessWidget {
  const FailureDialouge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Please check your network connection and try again'),
      actions: [
        Button(
            tap: () => Navigator.pop(context),
            text: 'Okay',
            width: 100.w,
            colorBtn: kPrimaryColor,
            colorTxt: kSecondaryColor,
            height: 50),
        
      ],
    );
  }
}
