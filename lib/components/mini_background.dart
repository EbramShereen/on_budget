import 'package:flutter/material.dart';
import 'package:on_budget/assets/colors/colors.dart';

class MiniBackground extends StatelessWidget {
  const MiniBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      width: double.infinity,
      height: double.infinity,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: AppColors.secondaryColor),
        child: child,
      ),
    );
  }
}
