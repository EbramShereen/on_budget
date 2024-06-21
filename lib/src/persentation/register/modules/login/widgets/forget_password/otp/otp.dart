import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../utils/helper/constants/colors.dart';

class Otp extends StatelessWidget {
  const Otp({
    super.key,
  });
  static String id = 'Otp';
  @override
  Widget build(BuildContext context) {
    return OtpTextField(
        numberOfFields: 4,
        showFieldAsBox: true,
        focusedBorderColor: kPrimaryColor,
        fieldWidth: 50.w);
  }
}
