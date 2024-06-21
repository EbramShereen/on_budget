import 'package:flutter/material.dart';

import '../../../../../utils/helper/constants/colors.dart';
import '../../../../../utils/helper/constants/icons.dart';


class FourStars extends StatelessWidget {
  const FourStars({super.key});

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
          kFilledStarIcon,
          color: kStars,
        ),
        Icon(
          kFilledStarIcon,
          color: kStars,
        ),
        Icon(
          kFilledStarIcon,
          color: kStars,
        ),
        Icon(
          kNonFilledStarIcon,
        ),
      ],
    );
  }
}
