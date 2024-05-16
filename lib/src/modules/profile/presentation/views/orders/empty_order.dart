import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/components/background.dart';
import '../../../../../utils/helper/constants/images.dart';

class EmptyOrders extends StatelessWidget {
  const EmptyOrders({super.key});
  static String id = 'EmptyOrders';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders'),
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
              'Order Currently',
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
