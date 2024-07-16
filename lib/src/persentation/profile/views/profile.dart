import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/utils/helper/functions/profile_sections_list.dart';

import '../../../utils/components/background.dart';
import '../../../utils/components/bottom_bar/bottom_navber.dart';
import '../../../utils/components/leading_icon.dart';
import '../../home/views/home.dart';
import '../widgets/user_profile_box.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  // for route navigation
  static String id = 'ProfileScreen';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // list of sections in the profile like: notifications, coupons, etc
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
    // Get the profile sections list with the context
    final profileSections = getProfileSections(context);

    return Scaffold(
      appBar: AppBar(
        // leadingIcon ====> is extracted widget to put icon in leading and customize attributes
        leading: LeadingIcon(
          icon: Icons.home,
          onPressed: () => Navigator.pushNamed(context, HomeView.id),
          size: 35.r,
          horizontal: 15,
        ),
        title: const Text('Profile'),
      ),
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // gap is for making space
              Gap(ScreenUtil().setHeight(20)),
              // widget with profile picture, edit profile picture icon and user name
              const UserProfileBox(),
              Gap(ScreenUtil().setHeight(35)),
              // listview of sections in the profile
              ListView.builder(
                itemBuilder: (context, index) => profileSections[index],
                itemCount: profileSections.length,
                shrinkWrap: true,
                // to cancel auto scroll
                physics: const BouncingScrollPhysics(),
              ),
              Gap(ScreenUtil().setHeight(20)),
            ],
          ),
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
