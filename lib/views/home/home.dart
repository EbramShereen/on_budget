import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:on_budget/components/home_background.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';
import 'package:on_budget/views/profile/profile.dart';
import 'package:on_budget/widgets/home/home_sections/pants.dart';
import 'package:on_budget/widgets/home/home_sections/recommended_items_listview.dart';
import 'package:on_budget/widgets/home/home_sections/see_all.dart';

import 'package:on_budget/widgets/home/bottom_navbar/scroll_to_hide_widget.dart';
import 'package:on_budget/widgets/home/home_sections/shoes_listview.dart';
import 'package:on_budget/widgets/home/home_sections/t_shrt_listview.dart';
import 'package:on_budget/widgets/home/home_sections/underwear_listview.dart';

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
  late NotchBottomBarController _controller;
  int _currentIndex = 0;

  @override
  @override
  void initState() {
    super.initState();
    _controller = NotchBottomBarController(index: _currentIndex);
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBackground(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          children: [
            const SeeAll(text: 'Recommended Items'),
            const RecommendedItemsListView(),
            SizedBox(height: MediaQuerySizes.getHeight(context) * .05),
            const SeeAll(text: 'T-shirts'),
            const SizedBox(height: 20),
            const TshirtItemsListView(),
            const SizedBox(height: 20),
            const SeeAll(text: 'Pants'),
            const SizedBox(height: 20),
            const PantsItemsListView(),
            const SizedBox(height: 20),
            const SeeAll(text: 'Shoes'),
            const SizedBox(height: 20),
            const ShoesItemsListView(),
            const SizedBox(height: 20),
            const SeeAll(text: 'Underwear'),
            const SizedBox(height: 20),
            const UnderwearItemsListView(),
            const SizedBox(height: 20),
            const SeeAll(text: 'Blazer'),
            const SizedBox(height: 20),
            const UnderwearItemsListView(),
            const SizedBox(height: 40)
          ],
        ),
      ),
      bottomNavigationBar: Align(
        alignment: Alignment.bottomCenter,
        child: ScrollToHideWidget(
          controller: scrollController,
          child: AnimatedNotchBottomBar(
            notchBottomBarController: _controller,
            color: Colors.white,
            showLabel: true,
            elevation: 1,
            bottomBarItems: const [
              BottomBarItem(
                inActiveItem: Icon(Icons.home_filled, color: Colors.blueGrey),
                activeItem: Icon(Icons.home_filled, color: kPrimaryColor),
                itemLabel: 'Home',
              ),
              BottomBarItem(
                inActiveItem: Icon(Icons.search, color: Colors.blueGrey),
                activeItem: Icon(Icons.search, color: kPrimaryColor),
                itemLabel: 'Search',
              ),
              BottomBarItem(
                inActiveItem: Icon(Icons.settings, color: Colors.blueGrey),
                activeItem: Icon(Icons.settings, color: kPrimaryColor),
                itemLabel: 'Settings',
              ),
              BottomBarItem(
                inActiveItem: Icon(Icons.favorite, color: Colors.blueGrey),
                activeItem: Icon(Icons.favorite, color: kPrimaryColor),
                itemLabel: 'wishlist',
              ),
              BottomBarItem(
                inActiveItem: Icon(Icons.person, color: Colors.blueGrey),
                activeItem: Icon(Icons.person, color: kPrimaryColor),
                itemLabel: 'Profile',
              ),
            ],
            onTap: (index) {
              switch (index) {
                case 0:
                  Navigator.pushNamed(context, Home.id);
                  _currentIndex = 0;
                  break;
                case 1:
                  _currentIndex = 1;
                  break;
                case 2:
                  _currentIndex = 2;
                  break;
                case 3:
                  _currentIndex = 3;
                  break;
                case 4:
                  Navigator.pushNamed(context, ProfileScreen.id);
                  _currentIndex = 4;
                  break;
              }
              _controller.index = index;
            },
            kBottomRadius: 28.0,
            kIconSize: 25,
          ),
        ),
      ),
      extendBody: true,
    );
  }
}
