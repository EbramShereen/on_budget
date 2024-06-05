import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/constants/colors.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon(
      {super.key,
      this.icon,
      this.onPressed,
      this.size,
      this.vertical,
      this.horizontal,
      this.context});
  final IconData? icon;
  final void Function()? onPressed;
  final double? vertical;
  final double? horizontal;
  final double? size;
  final BuildContext? context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical?.toDouble() ?? 0,
        horizontal: horizontal?.toDouble() ?? 0,
      ),
      child: IconButton(
          onPressed: onPressed ??
              () {
                Navigator.pop(context);
              },
          icon: Icon(
            icon ?? Icons.arrow_back_ios,
            size: size ?? 20.r,
            color: kSecondaryColor,
          )),
    );
  }
}
