import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:text_divider/text_divider.dart';

import '../../../../../utils/components/background.dart';
import '../../../../../utils/components/button.dart';
import '../../../../../utils/helper/auth/google_auth.dart';
import '../../../../../utils/helper/constants/colors.dart';
import '../../../../../utils/helper/constants/images.dart';
import '../../login/views/login.dart';
import '../../supplier_or_customer/views/supplier_or_customer.dart';
import '../widgets/signup_social_icons.dart';

class SignupOptions extends StatefulWidget {
  const SignupOptions({super.key});
  static String id = 'SignupOptions';

  @override
  State<SignupOptions> createState() => _SignupOptionsState();
}

class _SignupOptionsState extends State<SignupOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Background(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ).r,
          child: Container(
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ).w,
            ),
            child: Column(
              children: [
                Gap(ScreenUtil().setHeight(70)),
                Text(
                  'Please select a preferred',
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w400),
                ),
                Text(
                  'option of your choice. ',
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w400),
                ),
                Gap(ScreenUtil().setHeight(20)),
                Button(
                    colorTxt: kSecondaryColor,
                    colorBtn: kPrimaryColor,
                    width: 100.w,
                    height: 60.h,
                    textSize: 25.sp,
                    text: 'Email',
                    tap: () =>
                        Navigator.pushNamed(context, SupplierOrCustomer.id)),
                Gap(ScreenUtil().setHeight(50)),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20).r,
                    child: TextDivider.horizontal(
                      text: Text(
                        'Or Continue With',
                        style: TextStyle(color: kHintColor, fontSize: 15.sp),
                      ),
                      thickness: .9,
                    )),
                Gap(ScreenUtil().setHeight(50)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignupWithSocial(
                      imageurl: kFacebookIcon,
                      width: 65.w,
                      height: 65.h,
                      tap: () {},
                    ),
                    Gap(ScreenUtil().setWidth(20)),
                    SignupWithSocial(
                      imageurl: Platform.isAndroid ? kGoogleIcon : kAppleIcon,
                      width: 65.w,
                      height: 65.h,
                      tap: () async {
                        signInWithGoogle();
                      },
                    ),
                    Gap(ScreenUtil().setWidth(20)),
                    SignupWithSocial(
                      imageurl: kXIcon,
                      width: 65.w,
                      height: 65.h,
                      tap: () {},
                    ),
                  ],
                ),
                Gap(ScreenUtil().setHeight(50)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                    Gap(ScreenUtil().setWidth(10)),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          )),
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF78AAF4)),
                      ),
                    ),
                  ],
                ),
                Gap(ScreenUtil().setHeight(20)),
                const Divider(
                  thickness: 1,
                  indent: 100,
                  endIndent: 100,
                ),
                Gap(ScreenUtil().setHeight(20)),
                Text(
                  'Our Terms of Use & Privacy Policy.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: const Color(0xFF1C2340),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
