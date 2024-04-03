import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneVerificationTextField extends StatelessWidget {
  PhoneVerificationTextField({super.key, required this.phoneNumber});
  FocusNode focusNode = FocusNode();
  String? phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: IntlPhoneField(
        initialCountryCode: 'EG',
        focusNode: focusNode,
        decoration: const InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        onChanged: (phone) {
          phoneNumber = phone.number;
          if (phoneNumber!.startsWith('0')) {
            phoneNumber = phoneNumber!.substring(1);
          }
          if (phoneNumber!.startsWith('20')) {
            phoneNumber = phoneNumber!.substring(1);
            phoneNumber = phoneNumber!.substring(1);
          }
          if (phoneNumber!.startsWith('+20')) {
            phoneNumber = phoneNumber!.substring(1);
            phoneNumber = phoneNumber!.substring(1);
            phoneNumber = phoneNumber!.substring(1);
          }
        },
      ),
    );
  }
}
