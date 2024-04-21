import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:on_budget/components/button.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';

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
            width: 400,
            height: 200,
            child: Image.asset(generateImage),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                textSize: 14,
                text: 'Add To Cart',
                tap: () {},
                width: 120,
                colorBtn: kPrimaryColor,
                colorTxt: kSecondaryColor,
                height: 40,
              ),
              const Gap(31),
              Button(
                textSize: 14,
                text: 'Regenrate',
                tap: () {},
                width: 120,
                colorBtn: kPrimaryColor,
                colorTxt: kSecondaryColor,
                height: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
