import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../utils/components/background.dart';
import '../../../../utils/components/leading_icon.dart';
import '../../../../utils/helper/constants/images.dart';

class EmptyWishlist extends StatelessWidget {
  const EmptyWishlist({super.key});
  static String id = 'EmptyWishlist';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
        leading: LeadingIcon(
          onPressed: () => Navigator.pop(context),
        ),
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
              'Wishlist Currently',
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
