import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/widgets/register/signup_with_email.dart/gender_widget.dart';

class GenderChoice extends StatefulWidget {
  const GenderChoice({super.key});

  @override
  State<GenderChoice> createState() => _GenderChoiceState();
}

class _GenderChoiceState extends State<GenderChoice> {
  bool isSelectBoy = false;

  bool isSelectGirl = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GenderWidget(
          image: 'lib/assets/register/signup_by_mail/boy.png',
          tap: () => setState(() {
            isSelectBoy = true;
            isSelectGirl = false;
          }),
          isSelect: isSelectBoy,
        ),
        const Gap(45),
        GenderWidget(
          image: 'lib/assets/register/signup_by_mail/girl.png',
          tap: () => setState(() {
            isSelectBoy = false;
            isSelectGirl = true;
          }),
          isSelect: isSelectGirl,
        )
      ],
    );
  }
}
