import 'package:flutter/cupertino.dart';
import 'package:on_budget/components/button.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';

// ignore: must_be_immutable
class OnBoardingLangButton extends StatelessWidget {
  OnBoardingLangButton({
    super.key,
    required this.text,
    required this.tap,
  });
  String? text;
  VoidCallback? tap;

  @override
  Widget build(BuildContext context) {
    return Button(
      colorBtn: kPrimaryColor,
      colorTxt: kSecondaryColor,
      text: text!,
      tap: tap!,
      height: MediaQuerySizes.getHeight(context) * .07,
      width: MediaQuerySizes.getWidth(context) * .4,
    );
  }
}
