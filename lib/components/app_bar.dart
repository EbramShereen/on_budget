import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget {
  AppBarWidget(
      {super.key,
      this.text,
      this.style,
      this.icon,
      this.actions,
      this.elevation});
  String? text;
  TextStyle? style;
  Icon? icon;
  List<Widget>? actions;
  double? elevation;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text ?? '',
        style: style,
      ),
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: icon ?? const Icon(Icons.arrow_back_ios_new),
      ),
      actions: actions,
      elevation: elevation ?? 0,
    );
  }
}
