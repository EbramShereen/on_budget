import 'package:flutter/material.dart';
import 'package:on_budget/helper/constants.dart';

class ResetCode extends StatelessWidget {
  const ResetCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: const ButtonStyle(
          overlayColor: MaterialStatePropertyAll(Colors.transparent),
          elevation: MaterialStatePropertyAll(0)),
      child: const Text(
        'Resent code',
        style: TextStyle(color: kPrimaryColor),
      ),
    );
  }
}
