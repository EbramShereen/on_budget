import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button(
      {super.key,
      required this.text,
      required this.tap,
      required this.width,
      required this.colorBtn,
      required this.colorTxt,
      required this.height,
      this.textSize});
  String text;
  VoidCallback tap;
  double width;
  double height;
  Color colorBtn;
  Color colorTxt;
  double? textSize;
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
