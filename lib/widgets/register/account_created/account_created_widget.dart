import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/assets/colors/colors.dart';
import 'package:on_budget/components/button.dart';

class AccountCreatedWidget extends StatelessWidget {
  const AccountCreatedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 291,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
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
            'Your account had beed created',
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
            colorTxt: AppColors.secondaryText,
            text: 'Welcome to onBudget',
            tap: () {},
            width: 295,
            colorBtn: AppColors.primaryBtn,
            textSize: 20,
          )
        ],
      ),
    );
  }
}
