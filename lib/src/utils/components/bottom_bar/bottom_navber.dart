// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:on_budget/src/persentation/chatbot/views/chatbot.dart';
import 'package:on_budget/src/persentation/generate_images/views/generate_t-shirt.dart';
import 'package:on_budget/src/persentation/home/views/home.dart';
import 'package:on_budget/src/persentation/home/views/search.dart';
import 'package:on_budget/src/persentation/profile/views/profile.dart';
import 'package:on_budget/src/utils/components/bottom_bar/scroll_to_hide_widget.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';
import 'package:on_budget/src/utils/helper/constants/images.dart';

// ignore: must_be_immutable
class CustomBottomNavBar extends StatelessWidget {
  int currentIndex;
  ScrollController controller;
  final int lastIndex;
  CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.controller,
    required this.lastIndex,
  }) : super(key: key);

  void _handleTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        currentIndex = 0;
        if (currentIndex != lastIndex) {
          // Navigator.pushNamed(context, Home.id);
        }

        break;
      case 1:
        currentIndex = 1;
        if (currentIndex != lastIndex) {
          Navigator.pushNamed(context, SearchScreen.id);
        }
        break;
      case 2:
        currentIndex = 2;
        if (currentIndex != lastIndex) {
          Navigator.pushNamed(context, ChatBotView.id);
        }
      case 3:
        currentIndex = 3;
        if (currentIndex != lastIndex) {
          Navigator.pushNamed(context, GenerateTshirt.id);
        }
        break;
      case 4:
        currentIndex = 4;
        if (currentIndex != lastIndex) {
          Navigator.pushNamed(context, ProfileScreen.id);
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ScrollToHideWidget(
        controller: controller,
        duration: const Duration(milliseconds: 700),
        child: AnimatedNotchBottomBar(
          notchBottomBarController:
              NotchBottomBarController(index: currentIndex),
          color: Colors.white,
          showLabel: true,
          elevation: 1,
          bottomBarItems: [
            const BottomBarItem(
              inActiveItem: Icon(Icons.home_filled, color: Colors.blueGrey),
              activeItem: Icon(Icons.home_filled, color: kPrimaryColor),
              itemLabel: 'Home',
            ),
            const BottomBarItem(
              inActiveItem: Icon(Icons.search, color: Colors.blueGrey),
              activeItem: Icon(Icons.search, color: kPrimaryColor),
              itemLabel: 'Search',
            ),
            BottomBarItem(
              inActiveItem: SvgPicture.asset(
                kGeminiSparkleInActive,
              ),
              activeItem: SvgPicture.asset(kGeminiSparkleActive),
              itemLabel: 'Tips',
            ),
            BottomBarItem(
              inActiveItem: SvgPicture.asset(kGenerateImagesInActive),
              activeItem: SvgPicture.asset(kGenerateImagesActive),
              itemLabel: 'Inspiration',
            ),
            const BottomBarItem(
              inActiveItem: Icon(Icons.person, color: Colors.blueGrey),
              activeItem: Icon(Icons.person, color: kPrimaryColor),
              itemLabel: 'Profile',
            ),
          ],
          onTap: (index) {
            _handleTap(context, index);
          },
          kBottomRadius: 28.0.r,
          kIconSize: 25.r,
        ),
      ),
    );
  }
}
