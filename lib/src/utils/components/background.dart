import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/constants/colors.dart';

class Background extends StatelessWidget {
  const Background(
      {super.key,
      required this.child,
      this.horizontalPadding,
      this.verticalPadding});

  final Widget child;
  final double? horizontalPadding;
  final double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      width: double.infinity,
      height: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))
              .w,
          color: kThirdColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 20,
            vertical: verticalPadding ?? 20,
          ).r,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ).w,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
