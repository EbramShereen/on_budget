import 'package:flutter/material.dart';

class CodeSentTo extends StatelessWidget {
  const CodeSentTo({
    super.key,
    required this.phoneNumber,
  });

  final String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Code sent to +20$phoneNumber',
      style: const TextStyle(
        color: Color(0xFF1C2340),
        fontSize: 16,
        fontFamily: 'Roboto',
      ),
    );
  }
}
