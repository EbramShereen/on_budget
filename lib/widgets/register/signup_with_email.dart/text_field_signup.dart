import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    Key? key,
    required this.labelText,
    required this.keyboardType,
    required this.validate,
    this.obscure = false,
  }) : super(key: key);

  final String labelText;
  final TextInputType keyboardType;
  String? Function(String?) validate;
  String? errorText;
  bool obscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          labelText: labelText,
        ),
        obscureText: obscure,
        keyboardType: keyboardType,
        validator: validate,
      ),
    );
  }
}
