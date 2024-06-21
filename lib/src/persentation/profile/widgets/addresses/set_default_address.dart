import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../utils/components/switch.dart';
import '../../../../utils/helper/constants/colors.dart';

class SetDefaultAddress extends StatelessWidget {
  SetDefaultAddress(
      {super.key, required this.switch_, required this.onChanged});
  bool switch_;
  void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 75,
      decoration: ShapeDecoration(
        color: kSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              const Text(
                'Set as default address',
                style: TextStyle(fontSize: 20),
              ),
              const Spacer(),
              switchWidget(value: switch_, onChanged: onChanged),
              const Gap(15)
            ],
          ),
        ),
      ),
    );
  }
}
