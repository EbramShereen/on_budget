import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/widgets/register/sign_up/signup_with_email.dart/gender_widget.dart';

class CustomerStoreChoice extends StatefulWidget {
  const CustomerStoreChoice({super.key});

  @override
  State<CustomerStoreChoice> createState() => _CustomerStoreChoiceState();
}

class _CustomerStoreChoiceState extends State<CustomerStoreChoice> {
  bool isSelectCustomer = false;
  bool isSelectStore = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SignUpChoice(
            image: kCustomerIcon,
            tap: () => setState(() {
                  isSelectCustomer = true;
                  isSelectStore = false;
                }),
            isSelect: isSelectCustomer),
        const Gap(70),
        SignUpChoice(
            image: kShopIcon,
            tap: () => setState(() {
                  isSelectCustomer = false;
                  isSelectStore = true;
                }),
            isSelect: isSelectStore),
      ],
    );
  }
}
