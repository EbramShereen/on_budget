import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/components/background.dart';
import '../../../../../utils/components/button.dart';
import '../../../../../utils/helper/constants/colors.dart';
import '../../customer/views/signup_for_customer.dart';
import '../widges/customer_store_choice.dart';

class SupplierOrCustomer extends StatelessWidget {
  const SupplierOrCustomer({super.key});
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
          CustomerStoreChoice(),
          const Gap(40),
          Button(
            text: 'Next',
            tap: () {
              print(CustomerStoreChoice().customerNavigate);
              CustomerStoreChoice().customerNavigate == true
                  ? null
                  : Navigator.pushNamed(context, SignUpForCustomer.id);
            },
            width: 180.w,
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
