
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/components/background.dart';
import 'package:on_budget/components/leading_icon.dart';
import 'package:on_budget/views/home/home.dart';
import 'package:on_budget/widgets/profile/profile_sections.dart';
import 'package:on_budget/widgets/profile/user_profile_box.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  // for route navigation
  static String id = 'ProfileScreen';
  // list of sections in the profile like: notifications, coupons,etc
  // "onTap" is for navigate or show dialog 
  List<ProfileSections> profileSections = [
    ProfileSections(
        icon: Icons.notifications_none, text: 'Notification', onTap: () {}),
    ProfileSections(icon: Icons.discount, text: 'Copouns', onTap: () {}),
    ProfileSections(icon: Icons.person, text: 'Account', onTap: () {}),
    ProfileSections(icon: Icons.receipt, text: 'My orders', onTap: () {}),
    ProfileSections(icon: Icons.near_me, text: 'Addresses', onTap: () {}),
    ProfileSections(icon: Icons.payment, text: 'Payment', onTap: () {}),
    ProfileSections(
        icon: Icons.favorite_border, text: 'Wishlist', onTap: () {}),
    ProfileSections(icon: Icons.login_outlined, text: 'Logout', onTap: () {}),
    ProfileSections(
        icon: Icons.person_remove_alt_1_outlined,
        text: 'Delete Account',
        onTap: () {}),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leadingIcon ====> is extracted widget to put icon in leading and custimize attributes
        leading: LeadingIcon(
          icon: Icons.home,
          onPressed: () => Navigator.pushNamed(context, Home.id),
          size: 35,
          horizontal: 15,
        ),
        title: const Text('Profile'),
      ),
      body: Background(
          child: Column(
        children: [
          // gap is for make space 
          const Gap(35),
          //its widget has profile picture, edit profile picture icon and name of user
          const UserProfileBox(),
          const Gap(50),
          // listview of sections in the profile that build list by index
          ListView.builder(
            itemBuilder: (context, index) => profileSections[index],
            itemCount: profileSections.length,
            shrinkWrap: true,
            //to cancel auto scroll
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      )),
    );
  }
}
