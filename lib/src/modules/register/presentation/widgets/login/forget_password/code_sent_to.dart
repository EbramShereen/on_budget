import 'package:flutter/material.dart';

class CodeSentTo extends StatelessWidget {
  const CodeSentTo({
    super.key,
    this.email,
  });

  final String? email;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Code sent to $email',
      style: const TextStyle(
        color: Color(0xFF1C2340),
        fontSize: 16,
        fontFamily: 'Roboto',
      ),
    );
  }
}
