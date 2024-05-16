import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/components/button.dart';
import '../../../../../utils/components/leading_icon.dart';
import '../../../../../utils/components/mini_background.dart';
import '../../../../../utils/helper/constants/colors.dart';
import '../../widgets/edit_profile/profile_info_item.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});
  static String id = 'EditProfile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const LeadingIcon(),
      ),
      body: MiniBackground(
        child: Column(
          children: [
            const Gap(100),
            const CircleAvatar(
              maxRadius: 80,
            ),
            const Gap(20),
            const Text(
              'user',
              style: TextStyle(fontSize: 40),
            ),
            const Gap(20),
            const ProfileInfoItem(
              text: 'Name of user',
            ),
            const Gap(20),
            const ProfileInfoItem(
              text: 'email',
            ),
            const Gap(20),
            const ProfileInfoItem(
              text: 'phone number',
            ),
            const Gap(40),
            Button(
                text: 'Save',
                tap: () {},
                width: 120,
                colorBtn: kPrimaryColor,
                colorTxt: kSecondaryColor,
                height: 40)
          ],
        ),
      ),
    );
  }
}
