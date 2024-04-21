import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:on_budget/helper/media_query.dart';
import 'package:on_budget/helper/regex.dart';
import 'package:on_budget/widgets/register/login/forget_password/phone_verification_textfield.dart';

import 'package:on_budget/components/text_form_field.dart';
import 'package:unicons/unicons.dart';

class SignupTextField extends StatefulWidget {
  const SignupTextField({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  State<SignupTextField> createState() => _SignupTextFieldState();
}

String? phoneNumber;
String? password;
bool hide = false;

class _SignupTextFieldState extends State<SignupTextField> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormFieldWidget(
            labelText: 'Last Name',
            keyboardType: TextInputType.name,
            validate: (value) {
              if (value!.isNotEmpty) {
                if (!value.contains(firstNameRegExp)) {
                  return 'Please enter a valid first name';
                }
              } else if (value.isEmpty) {
                return 'This field is empty!!!';
              }

              return null;
            },
          ),
          TextFormFieldWidget(
            paddingTop: 0,
            labelText: 'Last Name',
            keyboardType: TextInputType.name,
            validate: (value) {
              if (value!.isNotEmpty) {
                if (!value.contains(lastNameRegExp)) {
                  return 'Please enter a valid last name';
                }
              } else if (value.isEmpty) {
                return 'This field is empty!!!';
              }

              return null;
            },
          ),
          PhoneVerificationTextField(
            phoneNumber: phoneNumber,
            lengthCheck: true,
          ),
          TextFormFieldWidget(
            paddingTop: 0,
            labelText: 'Email Address',
            keyboardType: TextInputType.emailAddress,
            validate: (value) {
              if (value!.isEmpty) {
                return 'This field is empty!!!';
              } else if (value.toLowerCase().isNotEmpty) {
                if (!value.contains(emailRegExp)) {
                  return 'Please enter a valid email address';
                }
              }
              return null;
            },
          ),
          TextFormFieldWidget(
            paddingTop: 0,
            labelText: 'password',
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  hide = !hide;
                });
              },
              icon: hide
                  ? const Icon(
                      Icons.visibility_off,
                    )
                  : const Icon(Icons.visibility_outlined),
            ),
            obscure: hide,
            keyboardType: TextInputType.emailAddress,
            validate: (value) {
              password = value;
              if (value!.isEmpty) {
                return 'This field is empty!!!';
              } else if (value.isNotEmpty) {
                if (!value.contains(passwordRegExp)) {
                  return 'Password must be at least contain \n1. One small character \n2. One capital character \n3. One special character \n4. One number';
                }
              }
              return null;
            },
          ),
          TextFormFieldWidget(
            labelText: 'Confirm password',
            keyboardType: TextInputType.emailAddress,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  hide = !hide;
                });
              },
              icon: hide
                  ? const Icon(
                      Icons.visibility_off,
                    )
                  : const Icon(Icons.visibility_outlined),
            ),
            obscure: hide,
            validate: (value) {
              if (value!.isEmpty) {
                return 'This field is empty!!!';
              } else if (value.isNotEmpty) {
                if (value == password) {
                  return 'Password must be at least contain \n1. One small character \n2. One capital character \n3. One special character \n4. One number';
                }
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
