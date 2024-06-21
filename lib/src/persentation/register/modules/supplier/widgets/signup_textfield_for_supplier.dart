import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/components/text_form_field.dart';
import '../../../../../utils/helper/functions/regex.dart';

class SignupTextFieldForSupplier extends StatefulWidget {
  const SignupTextFieldForSupplier({
    super.key,
    required this.supplierformKey,
    required this.firstNameController,
    required this.lastNameController,
    required this.phoneController,
    required this.passwordController,
    required this.emailController,
    required this.companyNameController,
  });
  final GlobalKey<FormState> supplierformKey;

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final TextEditingController emailController;
  final TextEditingController companyNameController;

  @override
  State<SignupTextFieldForSupplier> createState() =>
      _SignupTextFieldForSupplierState();
}

const bool hide = false;

class _SignupTextFieldForSupplierState
    extends State<SignupTextFieldForSupplier> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.supplierformKey,
      child: Column(
        children: [
          Row(
            children: [
              //first name
              TextFormFieldWidget(
                controller: widget.firstNameController,
                width: 130.w,
                paaddingRight: 0,
                paddingLeft: 30,
                paddingbottom: 0,
                paddingTop: 0,
                labelText: 'First Name',
                keyboardType: TextInputType.name,
                validate: (value) {
                  // if (value!.isNotEmpty) {
                  //   if (!value.contains(firstNameRegExp)) {
                  //     return 'Please enter a valid first name';
                  //   }
                  // } else if (value.isEmpty) {
                  //   return 'This field is empty!!!';
                  // }

                  return null;
                },
              ),
              Gap(ScreenUtil().setWidth(20)),
              //last name
              TextFormFieldWidget(
                controller: widget.lastNameController,
                width: 130.w,
                paddingLeft: 0,
                paddingTop: 0,
                paddingbottom: 0,
                labelText: 'Last Name',
                keyboardType: TextInputType.name,
                validate: (value) {
                  // if (value!.isNotEmpty) {
                  //   if (!value.contains(lastNameRegExp)) {
                  //     return 'Please enter a valid last name';
                  //   }
                  // } else if (value.isEmpty) {
                  //   return 'This field is empty!!!';
                  // }
                  return null;
                },
              ),
            ],
          ),
          Gap(ScreenUtil().setHeight(20)),
          TextFormFieldWidget(
            controller: widget.companyNameController,
            width: 290.w,
            paaddingRight: 30,
            paddingLeft: 30,
            paddingbottom: 0,
            paddingTop: 0,
            labelText: 'Company Name',
            keyboardType: TextInputType.name,
            validate: (value) {
              // if (value!.isNotEmpty) {
              //   if (!value.contains(firstNameRegExp)) {
              //     return 'Please enter a valid company name';
              //   }
              // } else if (value.isEmpty) {
              //   return 'This field is empty!!!';
              // }

              return null;
            },
          ),
          Gap(ScreenUtil().setHeight(20)),
          //email
          TextFormFieldWidget(
            controller: widget.emailController,
            paddingbottom: 0,
            paddingTop: 0,
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
            validate: (value) {
              // if (value!.isEmpty) {
              //   return 'Email is required';
              // } else if (value.toLowerCase().isNotEmpty) {
              //   if (!value.contains(emailRegExp)) {
              //     return 'Please enter a valid email address';
              //   }
              // }
              // widget.email = value;
              return null;
            },
          ),
          Gap(ScreenUtil().setHeight(20)),

          // phone number
          TextFormFieldWidget(
            controller: widget.phoneController,
            paddingbottom: 0,
            paddingTop: 0,
            labelText: 'Phone Number',
            keyboardType: TextInputType.phone,
            validate: (value) {
              // if (value!.isEmpty) {
              //   return 'Phone number is required';
              // } else if (value.toLowerCase().isNotEmpty) {
              //   if (!value.contains(phoneRegExp)) {
              //     return 'Please enter a valid phone number';
              //   }
              // }
              // widget.email = value;
              return null;
            },
          ),
          Gap(ScreenUtil().setHeight(20)),

          //password
          TextFormFieldWidget(
            paddingbottom: 0,
            paddingTop: 0,
            controller: widget.passwordController,
            labelText: 'password',
            obscure: hide,
            keyboardType: TextInputType.emailAddress,
            validate: (value) {
              // if (value!.isEmpty) {
              //   return 'password is required';
              // } else if (value.isNotEmpty) {
              //   if (!value.contains(passwordRegExp)) {
              //     return 'Password must be at least contain \n1. One small character \n2. One capital character \n3. One special character \n4. One number';
              //   }
              // }
              return null;
            },
          ),
          Gap(ScreenUtil().setHeight(20)),

          //confirm password
          TextFormFieldWidget(
            paddingTop: 0,
            paddingbottom: 0,
            labelText: 'Confirm password',
            keyboardType: TextInputType.emailAddress,
            obscure: hide,
            validate: (value) {
              // if (value!.isEmpty) {
              //   return 'check password is required';
              // } else if (value.isNotEmpty) {
              //   if (value != widget.passwordController.text) {
              //     return '';
              //   }
              // }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
