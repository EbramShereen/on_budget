import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';

// ignore: must_be_immutable
class SignUpChoice extends StatelessWidget {
  SignUpChoice(
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
            radius: MediaQuerySizes.getWidth(context) * .15,
            backgroundColor: kPrimaryColor,
            child: GestureDetector(
              onTap: tap,
              child: CircleAvatar(
                radius: MediaQuerySizes.getWidth(context) * .143,
                backgroundColor: const Color(0xffD9D9D9),
                backgroundImage: AssetImage(image),
              ),
            ),
          )
        : GestureDetector(
            onTap: tap,
            child: CircleAvatar(
              radius: MediaQuerySizes.getWidth(context) * .15,
              backgroundColor: const Color(0xffD9D9D9),
              backgroundImage: AssetImage(image),
            ),
          );
  }
}
