import 'package:flutter/material.dart';

import '../helper/constants/colors.dart';

class MiniBackground extends StatelessWidget {
  const MiniBackground({
    super.key,
    required this.child,
    this.width,
    this.height,
  });

  final Widget child;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      width: width ?? double.infinity,
      height: height ?? double.infinity,
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
