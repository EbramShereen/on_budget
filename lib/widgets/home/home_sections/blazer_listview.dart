import 'package:flutter/material.dart';
import 'package:on_budget/helper/media_query.dart';
import 'package:on_budget/widgets/home/home_sections/home_items.dart';

class BlazerItemsListView extends StatelessWidget {
  const BlazerItemsListView({
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
