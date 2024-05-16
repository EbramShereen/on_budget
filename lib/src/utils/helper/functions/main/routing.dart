import 'package:flutter/material.dart';
import 'package:on_budget/src/modules/cart/persentation/views/cart_view.dart';
import 'package:on_budget/src/modules/chatbot/presentation/views/chatbot.dart';
import 'package:on_budget/src/modules/home/presentation/views/search.dart';
import 'package:on_budget/src/modules/on_boarding/views/on_boarding.dart';
import 'package:on_budget/src/modules/on_boarding/views/on_boarding_language.dart';
import 'package:on_budget/src/modules/profile/presentation/views/adresses/edit_address.dart';
import 'package:on_budget/src/modules/profile/presentation/views/adresses/show_addresses.dart';
import 'package:on_budget/src/modules/profile/presentation/views/copoun/empty_copoun.dart';
import 'package:on_budget/src/modules/profile/presentation/views/edit_profile/edit_profile.dart';
import 'package:on_budget/src/modules/profile/presentation/views/notifications/empty_notification.dart';
import 'package:on_budget/src/modules/profile/presentation/views/orders/empty_order.dart';
import 'package:on_budget/src/modules/profile/presentation/views/profile.dart';
import 'package:on_budget/src/modules/profile/presentation/views/wishlist/empty_wishlist.dart';
import 'package:on_budget/src/modules/register/presentation/views/login/forget_password.dart';
import 'package:on_budget/src/modules/register/presentation/views/sign_up/email_verification.dart';
import 'package:on_budget/src/modules/register/presentation/views/sign_up/signup_options.dart';
import 'package:on_budget/src/modules/register/presentation/views/sign_up/signup_with_email.dart';
import 'package:on_budget/src/modules/register/presentation/widgets/login/forget_password/otp/otp.dart';
import '../../../../modules/generate_image/presentation/views/generate_t-shirt.dart';
import '../../../../modules/home/presentation/views/home.dart';
import '../../../../modules/register/presentation/views/login/login.dart';
import '../../../../modules/register/presentation/views/sign_up/account_created.dart';

import '../../../../modules/register/presentation/views/sign_up/store_or_customer.dart';

class Routing {
  Map<String, WidgetBuilder> get routes {
    return {
      Home.id: (context) => const Home(),
      GenerateTshirt.id: (context) => const GenerateTshirt(),
      Login.id: (context) => const Login(),
      AccountCreated.id: (context) => const AccountCreated(),
      EmailVerification.id: (context) => const EmailVerification(),
      SignupOptions.id: (context) => const SignupOptions(),
      SignUpWithEmail.id: (context) => const SignUpWithEmail(),
      OnBoardingScreens.id: (context) => const OnBoardingScreens(),
      ForgetPassword.id: (context) => const ForgetPassword(),
      OnBoardingLanguage.id: (context) => const OnBoardingLanguage(),
      StoreOrCustomer.id: (context) => const StoreOrCustomer(),
      Otp.id: (context) => const Otp(),
      ChatBot.id: (context) => const ChatBot(),
      ProfileScreen.id: (context) => const ProfileScreen(),
      ShowAddresses.id: (context) => const ShowAddresses(),
      EditAddress.id: (context) => const EditAddress(),
      EmptyNotification.id: (context) => const EmptyNotification(),
      EmptyCoupon.id: (context) => const EmptyCoupon(),
      EmptyOrders.id: (context) => const EmptyOrders(),
      EmptyWishlist.id: (context) => const EmptyWishlist(),
      EditProfile.id: (context) => const EditProfile(),
      SearchScreen.id: (context) => const SearchScreen(),
      CartView.id: (context) => const CartView(),
    };
  }
}
