import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/persentation/home/widgets/home/see_all.dart';
import 'package:on_budget/src/persentation/home/widgets/home/product_listview_home.dart';
import 'package:on_budget/src/utils/helper/functions/category_list.dart';

import '../../../utils/components/bottom_bar/bottom_navber.dart';

import '../../../utils/components/home_background.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  static String id = 'Home';

  @override
  State<HomeView> createState() => _HomeState();
}

class _HomeState extends State<HomeView> {
  ScrollController scrollController = ScrollController();
  final int _currentIndex = 0;
  int lastIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBackground(
          child: ListView.builder(
        controller: scrollController,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SeeAll(
                text: items[index],
                index: index,
              ),
              const Gap(20),
              ProductsListView(category: items[index]),
            ],
          );
        },
      )),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        lastIndex: lastIndex,
        controller: scrollController,
      ),
      extendBody: true,
    );
  }
}
