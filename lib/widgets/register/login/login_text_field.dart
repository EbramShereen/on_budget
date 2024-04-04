import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  LoginTextField({super.key, required this.hint, required this.icon});
  String hint;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      enableSuggestions: true,
      maxLines: 1,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hint,
        fillColor: const Color(0xFFF4F5F7),
        filled: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              30,
            ),
          ),
        ),
      ),
    );
  }
}
