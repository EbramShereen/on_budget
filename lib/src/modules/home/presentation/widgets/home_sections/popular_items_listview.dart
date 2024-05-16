import 'package:flutter/material.dart';

import '../../../../../utils/helper/functions/responsive.dart';
import 'home_items.dart';

class PopularItemsListView extends StatelessWidget {
  const PopularItemsListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuerySizes.getWidth(context) * .49,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const HomeItems(),
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
