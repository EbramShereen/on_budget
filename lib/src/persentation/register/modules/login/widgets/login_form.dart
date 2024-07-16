import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/persentation/register/modules/login/widgets/customer_or_supplier_login.dart';
import 'package:on_budget/src/persentation/register/modules/login/widgets/login_text_field.dart';
import 'package:on_budget/src/persentation/register/modules/login/widgets/remember_me_login.dart';
import 'package:on_budget/src/persentation/register/modules/login/widgets/sign_in_button.dart';
import 'package:on_budget/src/utils/components/mini_background.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';

class Loginform extends StatefulWidget {
  const Loginform({super.key});

  @override
  State<Loginform> createState() => _LoginformState();
}

GlobalKey<CustomerOrSupplierLoginState> customerOrSupplierKey =
    GlobalKey<CustomerOrSupplierLoginState>();

class _LoginformState extends State<Loginform> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return MiniBackground(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: kThirdColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ).r,
            ),
            width: 350.w,
            height: 350.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Sign in to continue',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Gap(ScreenUtil().setHeight(10)),
                  Column(
                    children: [
                      LoginTextField(
                        controller: emailController,
                        hint: 'Enter Your Email',
                        icon: const Icon(
                          Icons.mail_outline,
                          color: kPrimaryColor,
                        ),
                      ),
                      Gap(ScreenUtil().setHeight(10)),
                      LoginTextField(
                        controller: passwordController,
                        hint: 'Enter Your Password',
                        icon: const Icon(
                          Icons.lock_outlined,
                          color: kPrimaryColor,
                        ),
                      ),
                      Gap(ScreenUtil().setHeight(10)),
                      // CustomerOrSupplierLogin(
                      //   key: customerOrSupplierKey,
                      // ),
                      Gap(ScreenUtil().setHeight(10)),
                      RememberMeLogin(),
                      Gap(ScreenUtil().setHeight(10)),
                      SignInButton(
                        // userType: CustomerOrSupplierLogin().userType,
                        emailController: emailController,
                        passwordController: passwordController,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
