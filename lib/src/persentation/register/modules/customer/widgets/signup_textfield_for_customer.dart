import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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
  });
  final GlobalKey<FormState> formKey;
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
          TextFormFieldWidget(
            controller: widget.firstNameController,
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
                return 'First name is required';
              }

              return null;
            },
          ),
          Gap(ScreenUtil().setHeight(10)),
          //last name
          TextFormFieldWidget(
            controller: widget.lastNameController,
            paddingbottom: 0,
            paddingTop: 0,
            labelText: 'Last Name',
            keyboardType: TextInputType.name,
            validate: (value) {
              if (value!.isNotEmpty) {
                if (!value.contains(lastNameRegExp)) {
                  return 'Please enter a valid last name';
                }
              } else if (value.isEmpty) {
                return 'Last Name is required';
                // return 'last name is required';
              }
              return null;
            },
          ),
          Gap(ScreenUtil().setHeight(10)),
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
              return null;
            },
          ),
          Gap(ScreenUtil().setHeight(10)),

          // phone number

          TextFormFieldWidget(
            controller: widget.phoneController,
            paddingbottom: 0,
            paddingTop: 0,
            labelText: 'Phone Number',
            keyboardType: TextInputType.phone,
            validate: (value) {
              value = value?.trim();

              if (value!.isEmpty) {
                return 'Phone number is required';
              }
              //else if (value.isNotEmpty) {
              //   if (!phoneRegExp.hasMatch(value)) {
              //     return 'Please enter a valid Phone number';
              //   }
              // }
              return null;
            },
          ),
          Gap(ScreenUtil().setHeight(10)),

          //password
          TextFormFieldWidget(
            paddingbottom: 0,
            paddingTop: 0,
            controller: widget.passwordController,
            labelText: 'Password',
            obscure: true,
            keyboardType: TextInputType.emailAddress,
            validate: (value) {
              if (value!.isEmpty) {
                return 'Password is required';
              } else if (value.isNotEmpty) {
                if (!value.contains(passwordRegExp)) {
                  return 'Password must be at least contain \n1. One small character \n2. One capital character \n3. One special character \n4. One number';
                }
              }
              return null;
            },
          ),
          Gap(ScreenUtil().setHeight(10)),

          //confirm password
          TextFormFieldWidget(
            paddingTop: 0,
            paddingbottom: 0,
            labelText: 'Confirm password',
            keyboardType: TextInputType.emailAddress,
            obscure: true,
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
