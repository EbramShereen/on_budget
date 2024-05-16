import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget(
      {super.key,
      this.text,
      this.style,
      this.icon,
      this.actions,
      this.elevation});

  final String? text;
  final TextStyle? style;
  final Icon? icon;
  final List<Widget>? actions;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(56),
      child: AppBar(
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
      ),
    );
  }
}
