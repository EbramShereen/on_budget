import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/utils/components/bottom_bar/bottom_navber.dart';

import '../../../../utils/components/background.dart';
import '../../../../utils/components/leading_icon.dart';
import '../../../../utils/components/show_dialog.dart';
import '../../../../../generated/l10n.dart';
import '../widgets/profile_sections.dart';
import '../widgets/user_profile_box.dart';
import '../../../home/presentation/views/home.dart';
import '../../../register/presentation/views/login/login.dart';
import 'adresses/show_addresses.dart';
import 'copoun/empty_copoun.dart';
import 'notifications/empty_notification.dart';
import 'orders/empty_order.dart';
import 'wishlist/empty_wishlist.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  // for route navigation
  static String id = 'ProfileScreen';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // list of sections in the profile like: notifications, coupons,etc
  late ScrollController scrollController;

  final int _currentIndex = 4;

  int lastIndex = 4;

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
    List<ProfileSections> profileSections = [
      ProfileSections(
          icon: Icons.notifications_none,
          text: 'Notifications',
          onTap: () => Navigator.pushNamed(context, EmptyNotification.id)),
      ProfileSections(
          icon: Icons.discount,
          text: 'Copouns',
          onTap: () => Navigator.pushNamed(context, EmptyCoupon.id)),
      ProfileSections(
          icon: Icons.receipt,
          text: 'My orders',
          onTap: () => Navigator.pushNamed(context, EmptyOrders.id)),
      ProfileSections(
          icon: Icons.near_me,
          text: 'Addresses',
          onTap: () => Navigator.pushNamed(context, ShowAddresses.id)),
      ProfileSections(icon: Icons.payment, text: 'Payment', onTap: () {}),
      ProfileSections(
          icon: Icons.favorite_border,
          text: 'Wishlist',
          onTap: () => Navigator.pushNamed(context, EmptyWishlist.id)),
      ProfileSections(
          icon: Icons.login_outlined,
          text: 'Logout',
          onTap: () {
            showDialogWidget(
              context,
              firstTitle: 'Are you sure',
              secondTitle: 'you want to logout?',
              firstTap: () => Navigator.pop(context),
              secondTap: () => Navigator.pushNamed(context, Login.id),
              firstButtonText: 'Cancel',
              secondButtonText: 'Sure',
            );
          }),
      ProfileSections(
          icon: Icons.person_remove_alt_1_outlined,
          text: 'Delete Account',
          onTap: () {
            showDialogWidget(context,
                firstTitle: 'Are you sure',
                secondTitle: 'you want to delete your account?',
                firstTap: () => Navigator.pop(context),
                secondTap: () => Navigator.pushNamed(context, Login.id),
                firstButtonText: 'Cancel',
                secondButtonText: 'Delete',
                firstTitleSize: 20,
                secondTitleSize: 20);
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        //leadingIcon ====> is extracted widget to put icon in leading and custimize attributes
        leading: LeadingIcon(
          icon: Icons.home,
          onPressed: () => Navigator.pushNamed(context, Home.id),
          size: 35,
          horizontal: 15,
        ),
        title: const Text('profile'),
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
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemBuilder: (context, index) => profileSections[index],
                itemCount: profileSections.length,
                shrinkWrap: true,
                //to cancel auto scroll
                physics: const NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        controller: scrollController,
        currentIndex: _currentIndex,
        lastIndex: lastIndex,
      ),
      extendBody: true,
    );
  }
}
