import 'package:flutter/material.dart';

import 'package:on_budget/widgets/register/sign_up/signup_with_email.dart/text_field_signup.dart';

class SignupTextField extends StatefulWidget {
  const SignupTextField({
    super.key,
  });

  @override
  State<SignupTextField> createState() => _SignupTextFieldState();
}

class _SignupTextFieldState extends State<SignupTextField> {
  RegExp regexForNumbers = RegExp('[0-9]');
  RegExp regexForSmallChar = RegExp('[a-b]');
  RegExp regexForCapitalChar = RegExp('[A-B]');
  RegExp regexForCharAndSymbol = RegExp(r'[a-zA-Z!@#\$%^&*(),.?":{}|<>]');
  RegExp regexForCharAndSymbolForEmail = RegExp(r'[a-zA-Z!#\$%^&*(),?":{}|<>]');
  RegExp regexForSymbolAtAndDot = RegExp(r'[^\w@.]');
  String? errorText = '';
  String? password = '';
  String? checkPassword = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget(
          labelText: 'Full Name',
          keyboardType: TextInputType.name,
          validate: (value) {
            setState(
              () {
                if (value!.isNotEmpty) {
                  if (value.contains(regexForCapitalChar)) {
                    errorText =
                        'Full name cannot contain numbers or special characters.';
                  }
                } else if (value.isEmpty) {
                  errorText = 'You don\'t write your Full Name';
                }
              },
            );
            return null;
          },
        ),
        TextFieldWidget(
          labelText: 'Phone Number',
          keyboardType: TextInputType.phone,
          validate: (value) {
            setState(
              () {
                if (value!.isNotEmpty) {
                  if (value.contains(regexForNumbers)) {
                    errorText =
                        'Full name cannot contain numbers or special characters.';
                  }
                } else if (value.isEmpty) {
                  errorText = 'You don\'t write your Full Name';
                }
              },
            );
            return null;
          },
        ),
        TextFieldWidget(
          labelText: 'Email',
          keyboardType: TextInputType.emailAddress,
          validate: (value) {
            setState(
              () {
                if (value!.isNotEmpty) {
                  if (value.contains(regexForNumbers)) {
                    errorText =
                        'Full name cannot contain numbers or special characters.';
                  }
                } else if (value.isEmpty) {
                  errorText = 'You don\'t write your Full Name';
                }
              },
            );
            return null;
          },
        ),
        TextFieldWidget(
          labelText: 'Password',
          keyboardType: TextInputType.visiblePassword,
          validate: (value) {
            setState(
              () {
                if (value!.isNotEmpty) {
                  if (value.contains(regexForNumbers)) {
                    errorText =
                        'Full name cannot contain numbers or special characters.';
                  }
                } else if (value.isEmpty) {
                  errorText = 'You don\'t write your Full Name';
                }
              },
            );
            return null;
          },
          obscure: true,
        ),
        TextFieldWidget(
          labelText: 'Confirm Password',
          keyboardType: TextInputType.visiblePassword,
          obscure: true,
          validate: (value) {
            setState(
              () {
                if (value!.isNotEmpty) {
                  if (value.contains(regexForNumbers)) {
                    errorText =
                        'Full name cannot contain numbers or special characters.';
                  }
                } else if (value.isEmpty) {
                  errorText = 'You don\'t write your Full Name';
                }
              },
            );
            return null;
          },
        ),
      ],
    );
  }
}
