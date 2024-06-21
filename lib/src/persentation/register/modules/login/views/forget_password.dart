import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/components/background.dart';
import '../../../../../utils/components/button.dart';
import '../../../../../utils/components/show_dialog.dart';
import '../../../../../utils/components/text_field_widget.dart';
import '../../../../../utils/helper/constants/colors.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  static String id = 'ForgetPassword';

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password'),
      ),
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(250),
              Container(
                decoration: const BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                width: 400.w,
                height: 300,
                child: Column(
                  children: [
                    const Gap(40),
                    const Text(
                      'We will send a mail to',
                      style: TextStyle(
                        color: Color(0xFF1C2340),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      'the email address you registered',
                      style: TextStyle(
                        color: Color(0xFF1C2340),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      'to regain your password',
                      style: TextStyle(
                        color: Color(0xFF1C2340),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFieldWidget(
                        hintText: 'Enter your e-mail',
                      ),
                    ),
                    const Gap(20),
                    Button(
                        text: 'Get code',
                        tap: () => showDialogWidget(
                            firstButtonVisible: true,
                            firstTap: () {},
                            secondTap: () {},
                            context),
                        width: 100.w,
                        colorBtn: kPrimaryColor,
                        colorTxt: kSecondaryColor,
                        height: 50),
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
