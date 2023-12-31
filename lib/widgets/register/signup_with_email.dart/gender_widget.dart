import 'package:flutter/material.dart';
import 'package:on_budget/assets/colors/colors.dart';

// ignore: must_be_immutable
class GenderWidget extends StatelessWidget {
  GenderWidget(
      {super.key,
      required this.image,
      required this.tap,
      required this.isSelect});
  bool isSelect = false;
  String image;
  VoidCallback tap;
  @override
  Widget build(BuildContext context) {
    return isSelect == true
        ? CircleAvatar(
            radius: 54,
            backgroundColor: AppColors.primaryColor,
            child: GestureDetector(
              onTap: tap,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: const Color(0xffD9D9D9),
                child: Image.asset(image),
              ),
            ),
          )
        : GestureDetector(
            onTap: tap,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: const Color(0xffD9D9D9),
              child: Image.asset(image),
            ),
          );
  }
}
