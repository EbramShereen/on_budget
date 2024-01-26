import 'package:flutter/material.dart';
import 'package:on_budget/widgets/home/home_items.dart';

class RecomendedItemsListView extends StatelessWidget {
  const RecomendedItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 173,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => const HomeItems(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
