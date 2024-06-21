import 'package:flutter/material.dart';
import 'package:on_budget/src/persentation/add_product/views/add_product.dart';
import 'package:on_budget/src/persentation/home/views/show_all_product_category.dart';
import '../../../../persentation/cart/views/cart_view.dart';
import '../../../../persentation/chatbot/views/chatbot.dart';
import '../../../../persentation/checkout/views/checkout_view.dart';
import '../../../../persentation/home/views/products_details.dart';
import '../../../../persentation/home/views/search.dart';
import '../../../../persentation/onboarding/views/on_boarding.dart';
import '../../../../persentation/onboarding/views/on_boarding_language.dart';
import '../../../../persentation/profile/views/adresses/edit_address.dart';
import '../../../../persentation/profile/views/adresses/show_addresses.dart';
import '../../../../persentation/profile/views/copoun/empty_copoun.dart';
import '../../../../persentation/profile/views/edit_profile/edit_profile.dart';
import '../../../../persentation/profile/views/notifications/empty_notification.dart';
import '../../../../persentation/profile/views/orders/empty_order.dart';
import '../../../../persentation/profile/views/profile.dart';
import '../../../../persentation/profile/views/wishlist/empty_wishlist.dart';
import '../../../../persentation/register/modules/login/views/forget_password.dart';
import '../../../../persentation/register/modules/email_verification/email_verification.dart';
import '../../../../persentation/register/modules/signup_options/views/signup_options.dart';
import '../../../../persentation/register/modules/customer/views/signup_for_customer.dart';
import '../../../../persentation/register/modules/login/widgets/forget_password/otp/otp.dart';
import '../../../../persentation/generate_images/views/generate_t-shirt.dart';
import '../../../../persentation/home/views/home.dart';
import '../../../../persentation/register/modules/login/views/login.dart';
import '../../../../persentation/register/modules/account_created/views/account_created.dart';

import '../../../../persentation/register/modules/supplier_or_customer/views/supplier_or_customer.dart';

class Routes {
  Map<String, WidgetBuilder> get routes {
    return {
      HomeView.id: (context) => const HomeView(),
      GenerateTshirt.id: (context) => const GenerateTshirt(),
      Login.id: (context) => const Login(),
      AccountCreated.id: (context) => const AccountCreated(),
      EmailVerification.id: (context) => const EmailVerification(),
      SignupOptions.id: (context) => const SignupOptions(),
      SignUpForCustomer.id: (context) => const SignUpForCustomer(),
      OnBoardingScreens.id: (context) => const OnBoardingScreens(),
      ForgetPassword.id: (context) => const ForgetPassword(),
      OnBoardingLanguage.id: (context) => const OnBoardingLanguage(),
      SupplierOrCustomer.id: (context) => const SupplierOrCustomer(),
      Otp.id: (context) => const Otp(),
      ChatBotView.id: (context) => const ChatBotView(),
      ProfileScreen.id: (context) => const ProfileScreen(),
      ShowAddresses.id: (context) => const ShowAddresses(),
      EditAddress.id: (context) => const EditAddress(),
      EmptyNotification.id: (context) => const EmptyNotification(),
      EmptyCoupon.id: (context) => const EmptyCoupon(),
      EmptyOrders.id: (context) => const EmptyOrders(),
      EmptyWishlist.id: (context) => const EmptyWishlist(),
      EditProfile.id: (context) => const EditProfile(),
      SearchScreen.id: (context) => const SearchScreen(),
      CartView.id: (context) =>  CartView(),
      ProductsDetails.id: (context) => const ProductsDetails(),
      CheckOutView.id: (context) => const CheckOutView(),
      AddProduct.id: (context) => const AddProduct(),
      ShowAllProductsByCategory.id: (context) =>
          const ShowAllProductsByCategory(),
    };
  }
}
