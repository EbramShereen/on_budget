import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../utils/components/background.dart';
import '../../../../utils/helper/constants/images.dart';

class EmptyNotification extends StatelessWidget {
  const EmptyNotification({super.key});
  static String id = 'empty_notification';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: const Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(kEmptyState),
            ),
            Gap(50),
            Text(
              'You Have No',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'Notification Currently',
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
