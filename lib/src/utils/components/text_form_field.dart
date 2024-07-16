import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';

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
    this.controller,
    this.width,
    this.height,
    this.paddingLeft,
    this.paaddingRight,
  });

  final String labelText;
  final TextInputType keyboardType;
  final String? Function(String?) validate;
  final bool obscure;
  final Widget? suffixIcon;
  final double? paddingTop;
  final double? paddingbottom;
  final TextEditingController? controller;
  final double? width;
  final double? height;
  final double? paddingLeft;
  final double? paaddingRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
              top: paddingTop ?? 20,
              left: paddingLeft ?? 30,
              right: paaddingRight ?? 30,
              bottom: paddingbottom ?? 20)
          .r,
      child: SizedBox(
        height: height ?? 60.h,
        width: width ?? 400.w,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            errorMaxLines: 2,
            errorStyle: TextStyle(fontSize: 12.sp),
            suffix: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ).w,
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ).w,
              gapPadding: 4.r,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ).w,
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ).w,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ).w,
              gapPadding: 4.r,
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
