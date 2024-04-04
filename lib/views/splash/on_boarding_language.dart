import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';
import 'package:on_budget/widgets/on_boarding/on_boarding_lang_button.dart';

class OnBoardingLanguage extends StatelessWidget {
  const OnBoardingLanguage({super.key});
  static String id = 'OnBoardingLanguage';
  @override
  Widget build(BuildContext context) {
    // this screen for user can mange language of app before register
    return Scaffold(
        backgroundColor: const Color(0xFFD9DAB0),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuerySizes.getHeight(context) * .2,
                  left: MediaQuerySizes.getWidth(context) * .1,
                  right: MediaQuerySizes.getWidth(context) * .1),
              child: Image(
                image: const AssetImage(logo),
                width: MediaQuerySizes.getWidth(context) * .8,
              ),
            ),
            OnBoardingLangButton(
              text: 'English',
              tap: () {},
            ),
            Gap(MediaQuerySizes.getHeight(context) * .015),
            OnBoardingLangButton(
              text: 'عربي',
              tap: () {},
            ),
          ],
        ));
  }
}
