import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:on_budget/components/button.dart';
import 'package:on_budget/helper/constants.dart';

class GenerateTshirtResult extends StatelessWidget {
  const GenerateTshirtResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(34)),
            ),
            width: 235,
            height: 206,
            child: Image.asset('lib/assets/image 2.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                textSize: 15,
                text: 'Add To Cart',
                tap: () {},
                width: 105,
                colorBtn: kPrimaryColor,
                colorTxt: kSecondaryColor,
                height: 33,
              ),
              const Gap(31),
              Button(
                  textSize: 15,
                  text: 'Regenerate',
                  tap: () {},
                  width: 105,
                  colorBtn: kPrimaryColor,
                  colorTxt: kSecondaryColor,
                  height: 33),
            ],
          ),
        ),
      ],
    );
  }
}
