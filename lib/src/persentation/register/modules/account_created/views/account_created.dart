import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../widgets/account_created_widget.dart';

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
                  width: 139.w,
                  height: 143,
                  child: Image.asset(
                      'lib/src/res/images/register/account_created/account_created.jpg')),
            ),
            const Gap(90),
            const AccountCreatedWidget()
          ],
        ),
      ),
    );
  }
}
