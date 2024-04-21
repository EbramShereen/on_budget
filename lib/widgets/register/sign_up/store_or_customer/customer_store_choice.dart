import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';
import 'package:on_budget/widgets/register/sign_up/sign_up_choice.dart';

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
        Column(
          children: [
            SignUpChoice(
              image: kCustomerIcon,
              tap: () => setState(() {
                isSelectCustomer = true;
                isSelectStore = false;
              }),
              isSelect: isSelectCustomer,
            ),
            Text(
              'Seller',
              style:
                  TextStyle(fontSize: MediaQuerySizes.getWidth(context) * .07),
            )
          ],
        ),
        const Gap(70),
        Column(
          children: [
            SignUpChoice(
              image: kShopIcon,
              tap: () => setState(() {
                isSelectCustomer = false;
                isSelectStore = true;
              }),
              isSelect: isSelectStore,
            ),
            Text(
              'Buyer',
              style:
                  TextStyle(fontSize: MediaQuerySizes.getWidth(context) * .07),
            )
          ],
        ),
      ],
    );
  }
}
