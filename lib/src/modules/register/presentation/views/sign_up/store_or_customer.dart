import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/components/background.dart';
import '../../../../../utils/components/button.dart';
import '../../../../../utils/helper/constants/colors.dart';
import '../../../../../utils/helper/functions/responsive.dart';
import '../../widgets/sign_up/store_or_customer/customer_store_choice.dart';
import 'signup_with_email.dart';

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
          const Gap(200),
          const Text(
            'Choose your type',
            style: TextStyle(fontSize: 35),
          ),
          const Gap(60),
          const CustomerStoreChoice(),
          const Gap(40),
          Button(
            text: 'Next',
            tap: () => Navigator.pushNamed(context, SignUpWithEmail.id),
            width: 180,
            colorBtn: kPrimaryColor,
            colorTxt: kSecondaryColor,
            height: 60,
            textSize: 25,
          )
        ],
      )),
    );
  }
}
