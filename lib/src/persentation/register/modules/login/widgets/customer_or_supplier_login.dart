import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/utils/components/button.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';

class CustomerOrSupplierLogin extends StatefulWidget {
  CustomerOrSupplierLogin({
    super.key,
  });
  String userType = '';
  @override
  State<CustomerOrSupplierLogin> createState() =>
      CustomerOrSupplierLoginState();
}

bool customerSelected = false;
bool supplierSelected = false;

class CustomerOrSupplierLoginState extends State<CustomerOrSupplierLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Who are you ?',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: kPrimaryColor)),
        const Gap(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                  tap: () {
                    setState(() {
                      customerSelected = true;
                      supplierSelected = false;
                      widget.userType = 'Customer';
                    });
                    log(widget.userType);
                  },
                  text: 'Customer',
                  width: 100.w,
                  colorBtn: customerSelected ? kPrimaryColor : kHintColor,
                  colorTxt: customerSelected ? kSecondaryColor : Colors.black87,
                  height: 50),
              Button(
                  tap: () {
                    setState(() {
                      customerSelected = false;
                      supplierSelected = true;
                      widget.userType = 'Supplier';
                    });
                    log(widget.userType);
                  },
                  text: 'Supplier',
                  width: 100.w,
                  colorBtn: supplierSelected ? kPrimaryColor : kHintColor,
                  colorTxt: supplierSelected ? kSecondaryColor : Colors.black87,
                  height: 50),
            ],
          ),
        ),
      ],
    );
  }
}
