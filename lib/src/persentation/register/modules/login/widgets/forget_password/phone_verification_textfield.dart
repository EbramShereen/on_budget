import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneVerificationTextField extends StatelessWidget {
  const PhoneVerificationTextField({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      child: InternationalPhoneNumberInput(
        onInputChanged: (number) {},
        textFieldController: controller,
        initialValue: PhoneNumber(isoCode: 'EG'),
        inputBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
