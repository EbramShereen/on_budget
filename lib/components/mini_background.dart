import 'package:flutter/material.dart';

import 'package:on_budget/helper/constants.dart';

class MiniBackground extends StatelessWidget {
  const MiniBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      width: double.infinity,
      height: double.infinity,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Color(0xFFF2F1F1)),
        child: child,
      ),
    );
  }
}
