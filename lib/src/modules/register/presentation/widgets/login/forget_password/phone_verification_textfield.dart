import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../../utils/helper/functions/responsive.dart';

// ignore: must_be_immutable
class PhoneVerificationTextField extends StatelessWidget {
  PhoneVerificationTextField(
      {super.key, required this.phoneNumber, this.lengthCheck});
  FocusNode focusNode = FocusNode();
  String? phoneNumber;
  bool? lengthCheck;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuerySizes.getHeight(context) * .02,
        right: MediaQuerySizes.getWidth(context) * .06,
        left: MediaQuerySizes.getWidth(context) * .06,
      ),
      child: IntlPhoneField(
        disableLengthCheck: lengthCheck ?? true,
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
