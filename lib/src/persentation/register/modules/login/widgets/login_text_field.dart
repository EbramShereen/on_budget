import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class LoginTextField extends StatelessWidget {
  const LoginTextField(
      {super.key,
      required this.hint,
      required this.icon,
      required this.controller});
  final String hint;
  final Icon icon;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        enableSuggestions: true,
        maxLines: 1,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hint,
          fillColor: const Color(0xFFF4F5F7),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              const Radius.circular(
                30,
              ).w,
            ),
          ),
        ),
      ),
    );
  }
}
