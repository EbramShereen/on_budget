import 'package:flutter/material.dart';

class TextFieldSignup extends StatelessWidget {
  TextFieldSignup({
    Key? key,
    required this.labelText,
    required this.keyboardType,
    required this.onChanged,
    required this.errorText,
    this.obscure = false,
  }) : super(key: key);

  final String labelText;
  final TextInputType keyboardType;
  void Function(String)? onChanged;
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
          errorText: errorText,
        ),
        obscureText: obscure,
        keyboardType: keyboardType,
        onChanged: onChanged,
      ),
    );
  }
}
