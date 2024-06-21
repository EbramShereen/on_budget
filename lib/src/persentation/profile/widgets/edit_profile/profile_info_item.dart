import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../utils/helper/constants/colors.dart';

class ProfileInfoItem extends StatelessWidget {
  const ProfileInfoItem({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 350.w,
          decoration: const BoxDecoration(
            color: kThirdColor,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Gap(10),
              Text(
                text,
                style: const TextStyle(fontSize: 20),
              ),
              const Spacer(),
              const Gap(10),
            ],
          ),
        ),
      ],
    );
  }
}
