// This class defines a MiniBackground widget that wraps its child with a specific design and color scheme, similar to Background but with different styling.
import 'package:flutter/material.dart';
import 'package:on_budget/helper/constants.dart';

class MiniBackground extends StatelessWidget {
  const MiniBackground(
      {super.key,
      required this.child}); // Constructor requires a child widget to be provided.

  final Widget child; // The child widget to be wrapped by the MiniBackground.

  @override
  Widget build(BuildContext context) {
    // Builds the MiniBackground widget with a nested structure for design.
    return Container(
      color:
          kPrimaryColor, // Sets the background color to a predefined primary color.
      width: double.infinity, // Expands the width to fill the available space.
      height:
          double.infinity, // Expands the height to fill the available space.
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), // Rounded corners at the top.
              topRight: Radius.circular(30),
            ),
            color: Color(0xFFF2F1F1)), // Sets the color of the inner container.
        child: child, // Places the provided child widget inside.
      ),
    );
  }
}
