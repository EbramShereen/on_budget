import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/helper/constants/colors.dart';

// ignore: must_be_immutable
class SupplierOrCustomer extends StatelessWidget {
  SupplierOrCustomer(
      {super.key,
      required this.image,
      required this.tap,
      required this.isSelect,
      this.selectedRadius,
      this.unSelectedRadius,
      this.selectedRadiusColor,
      });
  bool isSelect = false;
  final String image;
  final VoidCallback tap;
  final double? selectedRadius;
  final double? selectedRadiusColor;
  final double? unSelectedRadius;

  @override
  Widget build(BuildContext context) {
    return isSelect == true
        ? CircleAvatar(
            radius: selectedRadiusColor ?? 68.r,
            backgroundColor: kPrimaryColor,
            child: GestureDetector(
              onTap: tap,
              child: CircleAvatar(
                radius: selectedRadius ?? 65.r,
                backgroundColor: const Color(0xffD9D9D9),
                backgroundImage: AssetImage(image),
              ),
            ),
          )
        : GestureDetector(
            onTap: tap,
            child: CircleAvatar(
              radius: unSelectedRadius ?? 65.r,
              backgroundColor: const Color(0xffD9D9D9),
              backgroundImage: AssetImage(image),
            ),
          );
  }
}
