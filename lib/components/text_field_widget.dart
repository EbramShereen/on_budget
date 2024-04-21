import 'package:flutter/material.dart';
import 'package:on_budget/helper/constants.dart';

class TextFieldWidget extends StatefulWidget {
  TextFieldWidget({
    super.key,
    required this.hintText,
    required this.tap,
    required this.onSubmitted,
  });

  String hintText;
  VoidCallback? tap;
  void Function(String)? onSubmitted;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: IconButton(
          onPressed: widget.tap,
          icon: const Icon(Icons.send),
          enableFeedback: false,
          highlightColor: Colors.transparent,
        ),
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
