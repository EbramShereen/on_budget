import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/assets/colors/colors.dart';
import 'package:on_budget/components/button.dart';
import 'package:on_budget/components/background.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:on_budget/widgets/register/otp/otp.dart';

class EmailVerfication extends StatelessWidget {
  const EmailVerfication({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'I didn\'t receive code.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Resend Code',
                style: TextStyle(
                  color: AppColors.primaryColor,
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
            width: 300,
            colorBtn: AppColors.primaryBtn,
            colorTxt: AppColors.primaryText,
            height: 50,
            textSize: 20,
          )
        ],
      )),
    );
  }
}
