import 'package:flutter/material.dart';
import 'package:on_budget/widgets/register/signup_with_email.dart/text_field_signup.dart';
import 'package:is_valid/is_valid.dart';

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
        TextFieldSignup(
            labelText: 'Full Name',
            keyboardType: TextInputType.name,
            onChanged: (value) {
              setState(() {
                if (value.isEmpty || value.contains(regexForNumbers)) {
                  errorText =
                      'Full name cannot contain numbers or special characters.';
                } else {
                  errorText = '';
                }
              });
            },
            errorText: errorText!.isEmpty ? null : errorText),
        TextFieldSignup(
          labelText: 'Phone Number',
          keyboardType: TextInputType.phone,
          onChanged: (value) {
            if (value.isEmpty || !value.contains(regexForCharAndSymbol)) {
              errorText =
                  'Phone number must contain at least one character or special character';
            } else {
              errorText = '';
            }
          },
          errorText: errorText!.isEmpty ? null : errorText,
        ),
        TextFieldSignup(
          labelText: 'Email',
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) {
            if (value.isEmpty ||
                value.contains(regexForSymbolAtAndDot) ||
                !value.contains(regexForCharAndSymbolForEmail)) {
              errorText =
                  'Email must contain at least one character or special character.';
            } else {
              errorText = '';
            }
          },
          errorText: errorText!.isEmpty ? null : errorText,
        ),
        TextFieldSignup(
          labelText: 'Password',
          keyboardType: TextInputType.visiblePassword,
          onChanged: (value) {
            if (value.isEmpty ||
                value.length < 8 ||
                !value.contains(regexForSmallChar) ||
                !value.contains(regexForCapitalChar)) {
              errorText =
                  'Password must have at least 1 capital letter, 1 small letter, 1 number, and 1 special character. ';
              password = value;
            } else {
              errorText = '';
            }
          },
          errorText: errorText!.isEmpty ? null : errorText,
          obscure: true,
        ),
        TextFieldSignup(
            labelText: 'Confirm Password',
            keyboardType: TextInputType.visiblePassword,
            obscure: true,
            onChanged: (value) {
              checkPassword = value;
              checkPassword != password
                  ? errorText =
                      'Passwords do not match. Please re-enter your password'
                  : errorText = '';
            },
            errorText: errorText!.isEmpty ? null : errorText),
      ],
    );
  }
}
