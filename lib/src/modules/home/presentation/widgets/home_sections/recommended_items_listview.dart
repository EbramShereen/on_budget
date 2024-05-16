import 'package:flutter/material.dart';
import '../../../../../utils/helper/functions/responsive.dart';
import 'home_items.dart';

class RecommendedItemsListView extends StatelessWidget {
  const RecommendedItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuerySizes.getWidth(context) * .49,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => const HomeItems(),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
