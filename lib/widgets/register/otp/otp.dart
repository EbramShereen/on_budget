import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:on_budget/assets/colors/colors.dart';

class Otp extends StatelessWidget {
  const Otp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 4,
      showFieldAsBox: true,
      focusedBorderColor: AppColors.primaryText,
      fieldWidth: 50,
    );
  }
}
