import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../utils/helper/constants/images.dart';
import '../sign_up_choice.dart';

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
          selectedRadius: 50,
          selectedRadiusColor: 52,
          unSelectedRadius: 50,
        ),
        const Gap(45),
        SignUpChoice(
          image: kGirlIcon,
          tap: () => setState(() {
            isSelectBoy = false;
            isSelectGirl = true;
          }),
          isSelect: isSelectGirl,
          selectedRadius: 50,
          selectedRadiusColor: 52,
          unSelectedRadius: 50,
        )
      ],
    );
  }
}
