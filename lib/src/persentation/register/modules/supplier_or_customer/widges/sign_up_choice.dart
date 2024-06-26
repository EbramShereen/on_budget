import 'package:flutter/material.dart';

import '../../../../../utils/helper/constants/colors.dart';

// ignore: must_be_immutable
class StoreOrCustomer extends StatelessWidget {
  StoreOrCustomer(
      {super.key,
      required this.image,
      required this.tap,
      required this.isSelect,
      this.selectedRadius,
      this.unSelectedRadius,
      this.selectedRadiusColor,this.isCustomer,this.isSupplier});
  bool isSelect = false;
  final String image;
  final VoidCallback tap;
  final double? selectedRadius;
  final double? selectedRadiusColor;
  final double? unSelectedRadius;
   bool? isCustomer = false;
   bool? isSupplier = false;

  @override
  Widget build(BuildContext context) {
    return isSelect == true
        ? CircleAvatar(
            radius: selectedRadiusColor ?? 83,
            backgroundColor: kPrimaryColor,
            child: GestureDetector(
              onTap: tap,
              child: CircleAvatar(
                radius: selectedRadius ?? 80,
                backgroundColor: const Color(0xffD9D9D9),
                backgroundImage: AssetImage(image),
              ),
            ),
          )
        : GestureDetector(
            onTap: tap,
            child: CircleAvatar(
              radius: unSelectedRadius ?? 80,
              backgroundColor: const Color(0xffD9D9D9),
              backgroundImage: AssetImage(image),
            ),
          );
  }
}
