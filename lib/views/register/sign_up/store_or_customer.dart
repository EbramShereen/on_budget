import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/components/background.dart';
import 'package:on_budget/components/button.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';
import 'package:on_budget/views/register/sign_up/signup_with_email.dart';
import 'package:on_budget/widgets/register/sign_up/store_or_customer/customer_store_choice.dart';

class StoreOrCustomer extends StatelessWidget {
  const StoreOrCustomer({super.key});
  static String id = 'StoreOrCustomer';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store or customer'),
      ),
      body: Background(
          child: Column(
        children: [
          Gap(MediaQuerySizes.getHeight(context) * .25),
          Text(
            'Choose your type',
            style: TextStyle(fontSize: MediaQuerySizes.getWidth(context) * .07),
          ),
          Gap(MediaQuerySizes.getHeight(context) * .08),
          const CustomerStoreChoice(),
          Gap(MediaQuerySizes.getHeight(context) * .05),
          Button(
            text: 'Next',
            tap: () => Navigator.pushNamed(context, SignUpWithEmail.id),
            width: MediaQuerySizes.getWidth(context) * .4,
            colorBtn: kPrimaryColor,
            colorTxt: kSecondaryColor,
            height: MediaQuerySizes.getHeight(context) * .07,
            textSize: MediaQuerySizes.getWidth(context) * .05,
          )
        ],
      )),
    );
  }
}
