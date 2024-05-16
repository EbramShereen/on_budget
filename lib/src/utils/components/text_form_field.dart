import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.labelText,
    required this.keyboardType,
    required this.validate,
    this.obscure = false,
    this.suffixIcon,
    this.paddingTop,
    this.paddingbottom,
  });

  final String labelText;
  final TextInputType keyboardType;
  final String? Function(String?) validate;
  final bool obscure;
  final Widget? suffixIcon;
  final double? paddingTop;
  final double? paddingbottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: paddingTop ?? 20,
          left: 30,
          right: 30,
          bottom: paddingbottom ?? 20),
      child: SizedBox(
        height: 95,
        child: TextFormField(
          decoration: InputDecoration(
            suffix: suffixIcon,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
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
