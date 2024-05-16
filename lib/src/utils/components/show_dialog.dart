import 'package:flutter/material.dart';

import '../helper/constants/colors.dart';
import 'button.dart';

Future<dynamic> showDialogWidget(
  BuildContext context, {
  String? firstButtonText,
  String? secondButtonText,
  required VoidCallback firstTap,
  required VoidCallback secondTap,
  String? firstTitle,
  String? secondTitle,
  double? firstTitleSize,
  double? secondTitleSize,
  double? firstButtonSize,
  double? secondButtonSize,
  bool firstButtonVisible = true,
  bool secondButtonVisible = true,
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Column(
        children: [
          Text(
            firstTitle ?? '',
            style: TextStyle(fontSize: firstTitleSize),
          ),
          Text(
            secondTitle ?? '',
            style: TextStyle(fontSize: secondTitleSize),
          ),
        ],
      ),
      actions: [
        firstButtonVisible
            ? Visibility(
                visible: true,
                child: Button(
                  text: firstButtonText ?? 'sss',
                  tap: firstTap,
                  width: 100,
                  colorBtn: kSecondaryColor,
                  colorTxt: kCancelText,
                  height: 50,
                  textSize: firstButtonSize ?? 20,
                ),
              )
            : Visibility(
                visible: false,
                child: Button(
                  text: firstButtonText ?? '',
                  tap: firstTap,
                  width: 100,
                  colorBtn: kSecondaryColor,
                  colorTxt: kCancelText,
                  height: 50,
                  textSize: firstButtonSize ?? 20,
                ),
              ),
        Visibility(
          visible: secondButtonVisible,
          child: Button(
            text: secondButtonText ?? '',
            tap: secondTap,
            width: 100,
            colorBtn: kPrimaryColor,
            colorTxt: kSecondaryColor,
            height: 50,
            textSize: secondButtonSize ?? 20,
          ),
        ),
      ],
    ),
  );
}
