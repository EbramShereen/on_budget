import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../utils/helper/constants/images.dart';
import '../../../../../../utils/helper/functions/responsive.dart';
import '../sign_up_choice.dart';

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
            const Text(
              'Seller',
              style: TextStyle(fontSize: 30),
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
            const Text(
              'Buyer',
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ],
    );
  }
}
