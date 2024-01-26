import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/assets/colors/colors.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Gap(20),
        Text(
          'Recommendation items',
          style: TextStyle(
            color: AppColors.baseTxt,
            fontSize: 18,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        const Gap(120),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'See All +',
            style: TextStyle(
              color: Color(0xFF8A8D9F),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
