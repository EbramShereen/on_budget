import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../utils/components/background.dart';
import '../../../../utils/helper/constants/colors.dart';
import '../../../../utils/helper/constants/images.dart';

class EmptyCoupon extends StatelessWidget {
  const EmptyCoupon({super.key});
  static String id = 'EmptyCoupon';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Copouns'),
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
              'Coupons Currently',
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
