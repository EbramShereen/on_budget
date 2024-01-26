import 'package:flutter/material.dart';
import 'package:on_budget/widgets/home/home_items.dart';

class UnderwearItemsListView extends StatelessWidget {
  const UnderwearItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 173,
      child: ListView.builder(
        itemBuilder: (context, index) => const HomeItems(),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
