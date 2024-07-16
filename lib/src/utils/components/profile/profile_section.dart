import 'package:flutter/material.dart';

import '../../../persentation/profile/views/adresses/show_addresses.dart';
import '../../../persentation/profile/views/copoun/empty_copoun.dart';
import '../../../persentation/profile/views/notifications/empty_notification.dart';
import '../../../persentation/profile/views/orders/empty_order.dart';
import '../../../persentation/profile/views/wishlist/empty_wishlist.dart';
import '../../../persentation/profile/widgets/profile_sections.dart';
import '../../../persentation/register/modules/login/views/login.dart';
import '../show_dialog.dart';

class GetProfileSections {
  BuildContext context;
  GetProfileSections({required this.context});

  List<ProfileSections> buildProfileSections() {
    return [
      ProfileSections(
          icon: Icons.notifications_none,
          context,
          text: 'Notifications',
          onTap: () => Navigator.pushNamed(context, EmptyNotification.id)),
      ProfileSections(
          icon: Icons.discount,
          context,
          text: 'Copouns',
          onTap: () => Navigator.pushNamed(context, EmptyCoupon.id)),
      ProfileSections(
          icon: Icons.receipt,
          context,
          text: 'My orders',
          onTap: () => Navigator.pushNamed(context, EmptyOrders.id)),
      ProfileSections(
          icon: Icons.near_me,
          context,
          text: 'Addresses',
          onTap: () => Navigator.pushNamed(context, ShowAddresses.id)),
      ProfileSections(
        icon: Icons.payment,
        context,
        text: 'Payment',
        onTap: () {},
      ),
      ProfileSections(
          icon: Icons.favorite_border,
          context,
          text: 'Wishlist',
          onTap: () => Navigator.pushNamed(context, EmptyWishlist.id)),
      ProfileSections(icon: Icons.login_outlined, context, text: 'Logout',
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
          context,
          text: 'Delete Account', onTap: () {
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
  }
}
