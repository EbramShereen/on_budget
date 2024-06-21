import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/helper/constants/images.dart';
import 'sign_up_choice.dart';

class CustomerStoreChoice extends StatefulWidget {
  CustomerStoreChoice({super.key});
  bool? customerNavigate = false;
  bool? supplierNavigate = false;
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
            StoreOrCustomer(
              image: kCustomerIcon,
              tap: () => setState(() {
                isSelectCustomer = true;
                isSelectStore = false;
                widget.supplierNavigate = true;
                widget.customerNavigate = false;
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
            StoreOrCustomer(
              image: kShopIcon,
              tap: () => setState(() {
                isSelectCustomer = false;
                isSelectStore = true;
                widget.customerNavigate = true;
                widget.supplierNavigate = false;
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
