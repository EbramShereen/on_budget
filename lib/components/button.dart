// This class defines a customizable Button widget that detects taps.
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  // Constructor requires parameters for text, tap action, dimensions, and colors.
  Button(
      {super.key,
      required this.text, // Text to display on the button.
      required this.tap, // Function to execute on tap.
      required this.width, // Width of the button.
      required this.colorBtn, // Color of the button.
      required this.colorTxt, // Color of the text.
      required this.height, // Height of the button.
      this.textSize}); // Optional text size, defaults to 16 if not provided.

  // Fields for the button's customization parameters.
  String text;
  VoidCallback tap;
  double width;
  double height;
  Color colorBtn;
  Color colorTxt;
  double? textSize;

  @override
  Widget build(BuildContext context) {
    // Builds the Button widget with a GestureDetector to handle taps.
    return GestureDetector(
      onTap:
          tap, // Executes the provided tap function when the button is tapped.
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
              Radius.circular(23)), // Rounded corners for the button.
          color: colorBtn, // Background color of the button.
        ),
        width: width, // Sets the button's width.
        height: height, // Sets the button's height.
        child: Center(
          child: Text(
            text, // Displays the provided text.
            style: TextStyle(
                fontSize: textSize ?? 16,
                color: colorTxt), // Applies the text style.
          ),
        ),
      ),
    );
  }
}
