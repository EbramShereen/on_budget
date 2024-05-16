import 'package:flutter/material.dart';

import '../helper/constants/colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    this.hintText,
    this.tap,
    this.onSubmitted,
    this.suffixIcon,
    this.prefixIcon,
    this.prefix,
    this.controller, this.text,
  });

  final String? hintText;
  final VoidCallback? tap;
  final void Function(String)? onSubmitted;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefix;
  final TextEditingController? controller;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        prefix: prefix,
        suffixIcon: suffixIcon,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kTextFieldBorder, width: 3),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor, width: 3),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),

      
    );
  }
}
