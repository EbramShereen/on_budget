import 'package:flutter/material.dart';
import 'package:on_budget/helper/media_query.dart';

// ignore: must_be_immutable
class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    Key? key,
    required this.labelText,
    required this.keyboardType,
    required this.validate,
    this.obscure = false,
    this.suffixIcon,
    this.paddingTop,
    this.paddingbottom,
  }) : super(key: key);

  final String labelText;
  final TextInputType keyboardType;
  String? Function(String?) validate;

  bool obscure;
  Widget? suffixIcon;
  double? paddingTop;
  double? paddingbottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: paddingTop ?? MediaQuerySizes.getHeight(context) * .01,
          left: MediaQuerySizes.getWidth(context) * .06,
          right: MediaQuerySizes.getWidth(context) * .06,
          bottom: paddingbottom ?? MediaQuerySizes.getHeight(context) * .02),
      child: SizedBox(
        height: MediaQuerySizes.getHeight(context) * .08,
        child: TextFormField(
          decoration: InputDecoration(
            suffix: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(MediaQuerySizes.getWidth(context) * .03),
              ),
            ),
            labelText: labelText,
          ),
          obscureText: obscure,
          keyboardType: keyboardType,
          validator: validate,
        ),
      ),
    );
  }
}
