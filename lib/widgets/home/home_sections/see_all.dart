import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/helper/media_query.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(MediaQuerySizes.getWidth(context) * .1),
        SizedBox(
          width: MediaQuerySizes.getWidth(context) * .4,
          height: MediaQuerySizes.getHeight(context) * .03,
          child: Text(
            text,
            style: TextStyle(
              color: const Color(0xFF1C2340),
              fontSize: MediaQuerySizes.getWidth(context) * .045,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Gap(MediaQuerySizes.getWidth(context) * .3),
        GestureDetector(
          onTap: () {},
          child: Text(
            'See All +',
            style: TextStyle(
              color: const Color(0xFF8A8D9F),
              fontSize: MediaQuerySizes.getWidth(context) * .045,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
