import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/constants/colors.dart';
import 'button.dart';

Future<dynamic> showDialogWidget(
  BuildContext context, {
  String? firstButtonText,
  String? secondButtonText,
  VoidCallback? firstTap,
  VoidCallback? secondTap,
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
                  width: 100.w,
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
                  width: 100.w,
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
            width: 100.w,
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
