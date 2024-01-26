import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/assets/colors/colors.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Gap(20),
        SizedBox(
          width: 190,
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.baseTxt,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Gap(120),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {},
              child: const Text(
                textAlign: TextAlign.end,
                'See All +',
                style: TextStyle(
                  color: Color(0xFF8A8D9F),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
