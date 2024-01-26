import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:on_budget/assets/colors/colors.dart';
import 'package:on_budget/components/home_background.dart';
import 'package:on_budget/widgets/home/category/category_listview.dart';
import 'package:on_budget/widgets/home/home_items.dart';
import 'package:on_budget/widgets/home/pants.dart';
import 'package:on_budget/widgets/home/popular_items_listview.dart';
import 'package:on_budget/widgets/home/recomended_items_listview.dart';
import 'package:on_budget/widgets/home/see_all.dart';
import 'package:on_budget/widgets/home/shoes_listview.dart';
import 'package:on_budget/widgets/home/t_shrt_listview.dart';
import 'package:on_budget/widgets/home/underwear_listview.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBackground(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Gap(10),
            Center(
              child: Text(
                'What are you looking for today ?',
                style: TextStyle(
                  color: AppColors.baseTxt,
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            const Gap(30),
            CategoryHomeListView(),
            const Gap(20),
            const SeeAll(text: 'Recommended Items'),
            const Gap(20),
            const RecomendedItemsListView(),
            const Gap(20),
            const SeeAll(text: 'Popular Item'),
            const Gap(20),
            const PopularItemsListView(),
            const Gap(20),
            const SeeAll(text: 'T-shirts'),
            const Gap(20),
            const TshirtItemsListView(),
            const Gap(20),
            const SeeAll(text: 'Pants'),
            const Gap(20),
            const PantsItemsListView(),
            const Gap(20),
            const SeeAll(text: 'Shoes'),
            const Gap(20),
            const ShoesItemsListView(),
            const Gap(20),
            const SeeAll(text: 'Underwear'),
            const Gap(20),
            const UnderwearItemsListView(),
            const Gap(20),
            const SeeAll(text: 'Blazer'),
            const Gap(20),
            const UnderwearItemsListView(),
            const Gap(40)
          ],
        ),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: AppColors.homeSecondary,
        gap: 15,
        tabs: [
          GButton(
            icon: Icons.home_filled,
            text: 'Home',
            iconActiveColor: AppColors.homeTextBarIcon,
            textColor: AppColors.homeTextBarIcon,
            onPressed: () {},
          ),
          GButton(
            icon: Icons.favorite,
            text: 'Wishlist',
            iconActiveColor: AppColors.likesTextBarIcon,
            textColor: AppColors.likesTextBarIcon,
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
            iconActiveColor: AppColors.searchTextBarIcon,
            textColor: AppColors.searchTextBarIcon,
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
            iconActiveColor: AppColors.profileTextBarIcon,
            textColor: AppColors.profileTextBarIcon,
          ),
        ],
      ),
    );
  }
}
