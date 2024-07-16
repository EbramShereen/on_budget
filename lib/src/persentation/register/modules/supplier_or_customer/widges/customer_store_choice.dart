import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/persentation/register/modules/customer/views/signup_for_customer.dart';
import 'package:on_budget/src/persentation/register/modules/supplier/views/signup_for_supplier.dart';

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
            SupplierOrCustomer(
              image: kCustomerIcon,
              tap: () => setState(() {
                isSelectCustomer = true;
                isSelectStore = false;

                Navigator.pushNamed(context, SignUpForSupplier.id);
              }),
              isSelect: isSelectCustomer,
            ),
            Text(
              'Supplier',
              style: TextStyle(fontSize: 30.sp),
            )
          ],
        ),
        const Gap(70),
        Column(
          children: [
            SupplierOrCustomer(
              image: kShopIcon,
              tap: () => setState(() {
                isSelectCustomer = false;
                isSelectStore = true;

                Navigator.pushNamed(context, SignUpForCustomer.id);
              }),
              isSelect: isSelectStore,
            ),
            Text(
              'Customer',
              style: TextStyle(fontSize: 30.sp),
            )
          ],
        ),
      ],
    );
  }
}
