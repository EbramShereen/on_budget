import 'package:flutter/cupertino.dart';
import '../../../utils/components/button.dart';
import '../../../utils/helper/constants/colors.dart';
import '../../../utils/helper/functions/responsive.dart';

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
