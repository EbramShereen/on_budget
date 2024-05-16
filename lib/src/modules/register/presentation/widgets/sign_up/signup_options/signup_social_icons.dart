import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class SignupWithSocial extends StatelessWidget {
  SignupWithSocial(
      {super.key,
      required this.imageurl,
      required this.width,
      required this.height,
      required this.tap});
  String imageurl;
  double width;
  double height;
  VoidCallback tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: Colors.grey,
            )),
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset(
            imageurl,
          ),
        ),
      ),
    );
  }
}
