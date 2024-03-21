import 'package:flutter/material.dart';
import 'package:on_budget/widgets/home/home_sections/home_items.dart';

class RecommendedItemsListView extends StatelessWidget {
  const RecommendedItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => const HomeItems(),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
