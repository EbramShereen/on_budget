import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../utils/helper/constants/images.dart';
import '../widgets/on_boarding_lang_button.dart';

class OnBoardingLanguage extends StatelessWidget {
  const OnBoardingLanguage({super.key});
  static String id = 'OnBoardingLanguage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFD9DAB0),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 220, left: 40, right: 40).r,
              child: Image(
                image: const AssetImage(logo),
                width: 400.w,
              ),
            ),
            OnBoardingLangButton(
              text: 'English',
              tap: () {},
            ),
            Gap(ScreenUtil().setHeight(10)),
            OnBoardingLangButton(
              text: 'عربي',
              tap: () {},
            ),
          ],
        ));
  }
}
