import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/widgets/register/account_created/account_created_widget.dart';

class AccountCreated extends StatelessWidget {
  const AccountCreated({super.key});
  static String id = 'AccountCreated';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF9F9FF),
        child: Column(
          children: [
            const Gap(180),
            Center(
              child: SizedBox(
                  width: 139,
                  height: 143,
                  child: Image.asset(
                      'lib/assets/register/account_created/account_created.jpg')),
            ),
            const Gap(90),
            const AccountCreatedWidget()
          ],
        ),
      ),
    );
  }
}
