import 'package:flutter/material.dart';

import '../../../../../utils/helper/constants/colors.dart';
import '../../../../../utils/helper/constants/icons.dart';


class OneStar extends StatelessWidget {
  const OneStar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          kFilledStarIcon,
          color: kStars,
        ),
        Icon(
          kNonFilledStarIcon,
        ),
        Icon(
          kNonFilledStarIcon,
        ),
        Icon(
          kNonFilledStarIcon,
        ),
        Icon(
          kNonFilledStarIcon,
        ),
      ],
    );
  }
}
