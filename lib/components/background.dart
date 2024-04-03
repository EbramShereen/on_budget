import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      width: double.infinity,
      height: double.infinity,
      child: Container(
        decoration: BoxDecoration(

            //curve in after AppBar
            borderRadius: BorderRadius.only(
                topLeft:
                    Radius.circular(MediaQuerySizes.getWidth(context) * .1),
                topRight:
                    Radius.circular(MediaQuerySizes.getWidth(context) * .1)),
            color: kThirdColor),
        child: Padding(
          padding: EdgeInsets.all(MediaQuerySizes.getWidth(context) * .01),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            width: MediaQuerySizes.getWidth(context) * .2,
            height: MediaQuerySizes.getHeight(context) * .2,
            child: child,
          ),
        ),
      ),
    );
  }
}
