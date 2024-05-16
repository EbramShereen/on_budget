import 'package:flutter/material.dart';

import '../helper/constants/colors.dart';

Switch switchWidget(
    {required bool value, required void Function(bool)? onChanged}) {
  return Switch(
    activeColor: kSecondaryColor,
    activeTrackColor: ktoogleOn,
    inactiveTrackColor: ktoogleOff,
    inactiveThumbColor: kSecondaryColor,
    splashRadius: 50,
    value: value,
    onChanged: onChanged,
  );
}
