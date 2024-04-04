import 'package:flutter/material.dart';
import 'package:on_budget/components/button.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';

// ignore: must_be_immutable
class GetCode extends StatefulWidget {
  GetCode({super.key, required this.codeSent, required this.sendCodeClick});
  bool codeSent;
  bool sendCodeClick;
  @override
  State<GetCode> createState() => _GetCodeState();
}

class _GetCodeState extends State<GetCode> {
  bool? codeSent;
  bool? sendCodeClick;
  @override
  Widget build(BuildContext context) {
    return Button(
      colorBtn: kPrimaryColor,
      colorTxt: kSecondaryColor,
      text: 'Send Code ',
      tap: () {
        codeSent = true;
        sendCodeClick = true;
      },
      width: MediaQuerySizes.getWidth(context) * .3,
      height: MediaQuerySizes.getWidth(context) * .1,
    );
  }
}
