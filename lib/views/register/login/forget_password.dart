import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:on_budget/components/app_bar.dart';
import 'package:on_budget/components/background.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';
import 'package:on_budget/widgets/login/forget_password/code_sent_to.dart';
import 'package:on_budget/widgets/login/forget_password/get_code.dart';
import 'package:on_budget/widgets/login/forget_password/phone_verification_textfield.dart';
import 'package:on_budget/widgets/login/forget_password/reset_code.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  static String id = 'ForgetPassword';

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  GlobalKey<FormState> formKey = GlobalKey();

  String? phoneNumber;

  bool codeSent = false;
  bool sendCodeClick = false;

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBarWidget(
          text: 'Forget Password',
        ),
      ),
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(MediaQuerySizes.getHeight(context) * .2),
              Container(
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(MediaQuerySizes.getWidth(context) * .08),
                  ),
                ),
                width: MediaQuerySizes.getWidth(context) * .89,
                height: MediaQuerySizes.getWidth(context) * .85,
                child: Column(
                  children: [
                    Gap(MediaQuerySizes.getHeight(context) * .04),
                    Text(
                      'We will send a mail to',
                      style: TextStyle(
                        color: const Color(0xFF1C2340),
                        fontSize: MediaQuerySizes.getWidth(context) * .05,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'the email address you registered',
                      style: TextStyle(
                        color: const Color(0xFF1C2340),
                        fontSize: MediaQuerySizes.getWidth(context) * .05,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'to regain your password',
                      style: TextStyle(
                        color: const Color(0xFF1C2340),
                        fontSize: MediaQuerySizes.getWidth(context) * .05,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    PhoneVerificationTextField(
                      phoneNumber: phoneNumber,
                    ),
                    sendCodeClick
                        ? Visibility(
                            visible: codeSent,
                            child: Column(
                              children: [
                                CodeSentTo(phoneNumber: phoneNumber),
                                const ResetCode()
                              ],
                            ))
                        : GestureDetector(
                            onTap: () {
                              codeSent = true;
                              sendCodeClick = true;
                            },
                            child: GetCode(
                              codeSent: codeSent,
                              sendCodeClick: sendCodeClick,
                            ),
                          )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
