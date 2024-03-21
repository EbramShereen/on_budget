import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        const Gap(10),
        SizedBox(
          width: 150,
          height: 20,
          child: Text(
            text,
            style: const TextStyle(
              color: Color(0xFF1C2340),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Gap(160),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'See All +',
            style: TextStyle(
              color: Color(0xFF8A8D9F),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
