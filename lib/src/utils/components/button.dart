import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.text,
      required this.tap,
      required this.width,
      required this.colorBtn,
      required this.colorTxt,
      required this.height,
      this.textSize});

  final String text;
  final VoidCallback tap;
  final double width;
  final double height;
  final Color colorBtn;
  final Color colorTxt;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(23)),
          color: colorBtn,
        ),
        width: width,
        height: height,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: textSize ?? 16, color: colorTxt),
          ),
        ),
      ),
    );
  }
}
