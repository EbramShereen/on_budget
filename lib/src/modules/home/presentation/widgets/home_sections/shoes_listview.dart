import 'package:flutter/material.dart';

import '../../../../../utils/helper/functions/responsive.dart';
import 'home_items.dart';

class ShoesItemsListView extends StatelessWidget {
  const ShoesItemsListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuerySizes.getWidth(context) * .49,
      child: ListView.builder(
        itemBuilder: (context, index) => const HomeItems(),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
