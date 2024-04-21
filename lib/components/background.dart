// This class defines a Background widget that wraps its child with a specific design and color scheme.
import 'package:flutter/material.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';

class Background extends StatelessWidget {
  const Background(
      {super.key,
      required this.child}); // Constructor requires a child widget to be provided.

  final Widget child; // The child widget to be wrapped by the Background.

  @override
  Widget build(BuildContext context) {
    // Builds the Background widget with a nested structure for design.
    return Container(
      color:
          kPrimaryColor, // Sets the background color to a predefined primary color.
      width: double.infinity, // Expands the width to fill the available space.
      height:
          double.infinity, // Expands the height to fill the available space.
      child: Container(
        decoration: BoxDecoration(
          // Applies a decoration to create a curved effect after the AppBar.
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(MediaQuerySizes.getWidth(context) * .1),
              topRight:
                  Radius.circular(MediaQuerySizes.getWidth(context) * .1)),
          color: kThirdColor, // Sets the color of the inner container.
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuerySizes.getWidth(context) * .01,
            vertical: MediaQuerySizes.getHeight(context) * .00449,
          ), // Applies padding based on screen width.
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                    20), // Rounded corners for the innermost container.
              ),
            ),
            width: MediaQuerySizes.getWidth(context) *
                .2, // Sets width relative to screen size.
            height: MediaQuerySizes.getHeight(context) *
                .2, // Sets height relative to screen size.
            child: child, // Places the provided child widget inside.
          ),
        ),
      ),
    );
  }
}
