import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/modules/chatbot/presentation/views/chatbot.dart';
import 'package:on_budget/src/utils/components/bottom_bar/bottom_navber.dart';
import 'package:on_budget/src/utils/components/bottom_bar/scroll_to_hide_widget.dart';
import 'package:on_budget/src/modules/home/presentation/widgets/home_sections/pants.dart';
import 'package:on_budget/src/modules/home/presentation/widgets/home_sections/recommended_items_listview.dart';
import 'package:on_budget/src/modules/home/presentation/widgets/home_sections/see_all.dart';
import 'package:on_budget/src/modules/home/presentation/widgets/home_sections/shoes_listview.dart';
import 'package:on_budget/src/modules/home/presentation/widgets/home_sections/t_shrt_listview.dart';
import 'package:on_budget/src/modules/home/presentation/widgets/home_sections/underwear_listview.dart';
import 'package:on_budget/src/modules/profile/presentation/views/wishlist/empty_wishlist.dart';
import 'package:on_budget/src/modules/profile/presentation/views/profile.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';
import 'package:on_budget/src/utils/helper/functions/responsive.dart';
import 'package:on_budget/src/utils/helper/constants/images.dart';
import 'package:on_budget/src/utils/components/home_background.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  static String id = 'Home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ScrollController scrollController;
  final int _currentIndex = 0;
  int lastIndex = 0;

  @override
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBackground(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          child: const Column(
            children: [
              Gap(40),
              SeeAll(text: 'Recommended Items'),
              Gap(10),
              RecommendedItemsListView(),
              Gap(10),
              SeeAll(text: 'T-shirts'),
              Gap(10),
              TshirtItemsListView(),
              Gap(10),
              SeeAll(text: 'Pants'),
              Gap(10),
              PantsItemsListView(),
              Gap(10),
              SeeAll(text: 'Shoes'),
              Gap(10),
              ShoesItemsListView(),
              Gap(10),
              SeeAll(text: 'Underwear'),
              Gap(10),
              UnderwearItemsListView(),
              Gap(10),
              SeeAll(text: 'Blazer'),
              Gap(10),
              UnderwearItemsListView(),
              SizedBox(height: 40)
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        lastIndex: lastIndex,
        controller: scrollController,
      ),
      extendBody: true,
    );
  }
}
