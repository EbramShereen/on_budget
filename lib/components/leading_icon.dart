import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LeadingIcon extends StatelessWidget {
  LeadingIcon(
      {super.key,
      required this.icon,
      required this.onPressed,
      required this.size,
      this.vertical,
      this.horizontal});
  IconData icon;
  void Function()? onPressed;
  double? vertical;
  double? horizontal;
  double size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical?.toDouble() ?? 0,
        horizontal: horizontal?.toDouble() ?? 0,
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: size,
          )),
    );
  }
}
