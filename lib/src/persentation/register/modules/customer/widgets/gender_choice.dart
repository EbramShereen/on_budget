import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/helper/constants/images.dart';
import '../../supplier_or_customer/widges/sign_up_choice.dart';

class GenderChoice extends StatefulWidget {
  GenderChoice({Key? key}) : super(key: key);
  String? gender;

  @override
  GenderChoiceState createState() => GenderChoiceState();
}

class GenderChoiceState extends State<GenderChoice> {
  bool isSelectMan = false;
  bool isSelectWoman = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StoreOrCustomer(
          image: kBoyIcon,
          tap: () => setState(() {
            isSelectMan = true;
            isSelectWoman = false;
            widget.gender = "man";
          }),
          isSelect: isSelectMan,
          selectedRadius: 50,
          selectedRadiusColor: 52,
          unSelectedRadius: 50,
        ),
        const Gap(45),
        StoreOrCustomer(
          image: kGirlIcon,
          tap: () => setState(() {
            isSelectMan = false;
            isSelectWoman = true;
            widget.gender = "woman";
          }),
          isSelect: isSelectWoman,
          selectedRadius: 50,
          selectedRadiusColor: 52,
          unSelectedRadius: 50,
        ),
      ],
    );
  }
}
