import 'package:flutter/material.dart';

import '../../../../../../utils/components/text_form_field.dart';
import '../../../../../../utils/helper/functions/regex.dart';
import '../../login/forget_password/phone_verification_textfield.dart';

class SignupTextField extends StatefulWidget {
  SignupTextField({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  String? email, password, username, firstName, lastName, phone;
  @override
  State<SignupTextField> createState() => _SignupTextFieldState();
}

String? phoneNumber;
String? password;
bool hide = false;
String? email, username, firstName, lastName;

class _SignupTextFieldState extends State<SignupTextField> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormFieldWidget(
            paddingbottom: 0,
            paddingTop: 0,
            labelText: 'First Name',
            keyboardType: TextInputType.name,
            validate: (value) {
              if (value!.isNotEmpty) {
                if (!value.contains(firstNameRegExp)) {
                  return 'Please enter a valid first name';
                }
              } else if (value.isEmpty) {
                return 'This field is empty!!!';
              }
              widget.firstName = value;

              return null;
            },
          ),
          TextFormFieldWidget(
            paddingTop: 0,
            paddingbottom: 0,
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
              widget.lastName = value;
              return null;
            },
          ),
          PhoneVerificationTextField(
            phoneNumber: phoneNumber,
            lengthCheck: true,
          ),
          TextFormFieldWidget(
            paddingbottom: 0,
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
              widget.email = value;
              return null;
            },
          ),
          TextFormFieldWidget(
            paddingbottom: 0,
            paddingTop: 0,
            labelText: 'password',
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
              widget.password = value;
              return null;
            },
          ),
          TextFormFieldWidget(
            paddingTop: 0,
            paddingbottom: 0,
            labelText: 'Confirm password',
            keyboardType: TextInputType.emailAddress,
            obscure: hide,
            validate: (value) {
              if (value!.isEmpty) {
                return 'This field is empty!!!';
              } else if (value.isNotEmpty) {
                if (value != password) {
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
