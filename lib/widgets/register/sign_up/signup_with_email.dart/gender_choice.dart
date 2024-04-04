import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/widgets/register/sign_up/signup_with_email.dart/gender_widget.dart';

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
        SignUpChoice(
          image: kBoyIcon,
          tap: () => setState(() {
            isSelectBoy = true;
            isSelectGirl = false;
          }),
          isSelect: isSelectBoy,
        ),
        const Gap(45),
        SignUpChoice(
          image: kGirlIcon,
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
