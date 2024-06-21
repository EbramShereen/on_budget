import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/data/models/register/customer_model.dart';
import 'package:on_budget/src/persentation/home/views/home.dart';

import '../../../../../utils/components/button.dart';
import '../../../../../utils/helper/constants/colors.dart';

class AccountCreatedWidget extends StatelessWidget {
  const AccountCreatedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int model = ModalRoute.of(context)!.settings.arguments as int;
    return Container(
      width: 335.w,
      height: 291,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Gap(44),
          const Text(
            'Account Created!',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Gap(20),
          const Text(
            'Your account has been created',
            style: TextStyle(
              color: Color(0xFF8A8D9F),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            'successfully.',
            style: TextStyle(
              color: Color(0xFF8A8D9F),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Gap(37),
          Button(
            height: 50,
            colorTxt: kSecondaryColor,
            text: 'Welcome to onBudget',
            tap: () =>
                Navigator.pushNamed(context, HomeView.id, arguments: model),
            width: 295.w,
            colorBtn: kPrimaryColor,
            textSize: 20,
          ),
        ],
      ),
    );
  }
}
