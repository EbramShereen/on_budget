import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../login/widgets/forget_password/phone_verification_textfield.dart';
import 'gender_choice.dart';

import '../../../../../utils/components/text_form_field.dart';
import '../../../../../utils/helper/functions/regex.dart';

class SignupTextFieldForCustomer extends StatefulWidget {
  const SignupTextFieldForCustomer({
    super.key,
    required this.formKey,
    required this.firstNameController,
    required this.lastNameController,
    required this.phoneController,
    required this.passwordController,
    required this.emailController,

    // required this.password,
    // required this.username,
    // required this.firstName,
    // required this.lastName,
    // required this.phone
  });
  final GlobalKey<FormState> formKey;
  // String? password, username, firstName, lastName, phone;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final TextEditingController emailController;

  @override
  State<SignupTextFieldForCustomer> createState() =>
      _SignupTextFieldForCustomerState();
}

const bool hide = false;

class _SignupTextFieldForCustomerState
    extends State<SignupTextFieldForCustomer> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          Row(
            children: [
              //first name
              TextFormFieldWidget(
                controller: widget.firstNameController,
                width: 150.w,
                paaddingRight: 0,
                paddingLeft: 30,
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
                  // widget.firstName = value;

                  return null;
                },
              ),
              //last name
              TextFormFieldWidget(
                controller: widget.lastNameController,
                width: 150.w,
                paddingLeft: 46,
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
                  // widget.lastName = value;
                  return null;
                },
              ),
            ],
          ),

          //email
          TextFormFieldWidget(
            controller: widget.emailController,
            paddingbottom: 0,
            paddingTop: 0,
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
            validate: (value) {
              if (value!.isEmpty) {
                return 'Email is required';
              } else if (value.toLowerCase().isNotEmpty) {
                if (!value.contains(emailRegExp)) {
                  return 'Please enter a valid email address';
                }
              }
              // widget.email = value;
              return null;
            },
          ),

          // phone number

          TextFormFieldWidget(
            controller: widget.phoneController,
            paddingbottom: 0,
            paddingTop: 0,
            labelText: 'Phone Number',
            keyboardType: TextInputType.emailAddress,
            validate: (value) {
              if (value!.isEmpty) {
                return 'Phone number is required';
              } else if (value.toLowerCase().isNotEmpty) {
                if (!value.contains(phoneRegExp)) {
                  return 'Please enter a valid Phone number';
                }
              }
              // widget.email = value;
              return null;
            },
          ),
          //password
          TextFormFieldWidget(
            paddingbottom: 0,
            paddingTop: 0,
            controller: widget.passwordController,
            labelText: 'password',
            obscure: hide,
            keyboardType: TextInputType.emailAddress,
            validate: (value) {
              // widget.password = value;
              if (value!.isEmpty) {
                return 'password is required';
              } else if (value.isNotEmpty) {
                if (!value.contains(passwordRegExp)) {
                  return 'Password must be at least contain \n1. One small character \n2. One capital character \n3. One special character \n4. One number';
                }
              }
              // widget.password = value;
              return null;
            },
          ),

          //confirm password
          TextFormFieldWidget(
            paddingTop: 0,
            paddingbottom: 0,
            labelText: 'Confirm password',
            keyboardType: TextInputType.emailAddress,
            obscure: hide,
            validate: (value) {
              if (value != widget.passwordController.text || value!.isEmpty) {
                return 'Password and Confirm Password must be same';
              }

              return null;
            },
          ),
        ],
      ),
    );
  }
}
