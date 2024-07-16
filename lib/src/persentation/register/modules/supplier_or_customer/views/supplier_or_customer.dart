import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/components/background.dart';

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
          Gap(ScreenUtil().setHeight(200)),
          Text(
            'Choose your type',
            style: TextStyle(fontSize: 30.sp),
          ),
          Gap(ScreenUtil().setHeight(60)),
          CustomerStoreChoice(),
          Gap(ScreenUtil().setHeight(60)),
          // Button(
          //   text: 'Next',
          //   tap: () {
          //     print(CustomerStoreChoice().customerNavigate);
          //     CustomerStoreChoice().customerNavigate == true
          //         ? null
          //         : Navigator.pushNamed(context, SignUpForSupplier.id);
          //   },
          //   width: 180.w,
          //   colorBtn: kPrimaryColor,
          //   colorTxt: kSecondaryColor,
          //   height: 60,
          //   textSize: 25,
          // )
        ],
      )),
    );
  }
}
