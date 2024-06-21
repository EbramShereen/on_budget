import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../utils/helper/constants/colors.dart';

// ignore: must_be_immutable
class ProfileSections extends StatelessWidget {
  ProfileSections(
      {super.key, required this.icon, required this.text, required this.onTap});
  //this class for profile sections like notifications, coupons , etc.

  //to customize the icon for the section
  final IconData icon;
  //to customize the text for the section
  final String text;
  //to customize the onTap function for the section
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            const Gap(30),
            //icon for the section
            Icon(
              icon,
              color: kPrimaryColor,
              size: 40,
            ),

            SizedBox(width: 10.w),
            //text for the section
            Expanded(
              child: Text(
                text,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            //to put the arrow in the end of row
            const Spacer(),
            //arrow icon
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: kPrimaryColor,
            ),
            const Gap(30)
          ],
        ),
      ),
    );
  }
}
