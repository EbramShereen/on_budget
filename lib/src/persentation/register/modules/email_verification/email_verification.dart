import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../utils/components/background.dart';
import '../../../../utils/components/button.dart';
import '../../../../utils/helper/constants/colors.dart';
import '../login/widgets/forget_password/otp/otp.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});
  static String id = 'EmailVerification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Verification'),
      ),
      body: Background(
          child: Column(
        children: [
          const Gap(30),
          const Text(
            'OTP Verification',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Gap(14),
          const Text(
            'An authentication code has been sent to',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF8A8D9F)),
          ),
          const Gap(5),
          const Text(
            'example@gmail.com',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF8A8D9F)),
          ),
          const Gap(20),
          const Otp(),
          const Gap(20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'I didn\'t receive code.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Resend Code',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          const Gap(20),
          const Text(
            '1:20 Sec left',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Gap(20),
          Button(
            text: 'Verify Now',
            tap: () {},
            width: 300.w,
            colorBtn: kPrimaryColor,
            colorTxt: kPrimaryColor,
            height: 50,
            textSize: 20,
          )
        ],
      )),
    );
  }
}
