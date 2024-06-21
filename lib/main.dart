import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_budget/src/persentation/add_product/views/add_product.dart';
import 'package:on_budget/src/persentation/cart/views/cart_view.dart';
import 'package:on_budget/src/persentation/home/views/home.dart';
import 'package:on_budget/src/persentation/home/views/products_details.dart';
import 'package:on_budget/src/persentation/home/views/show_all_product_category.dart';
import 'package:on_budget/src/persentation/onboarding/views/on_boarding.dart';
import 'package:on_budget/src/persentation/register/modules/supplier/views/signup_for_supplier.dart';
import 'firebase_options.dart';
import 'src/utils/helper/constants/api.dart';
import 'src/utils/helper/functions/main/routes.dart';
import 'src/utils/helper/functions/main/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Gemini.init(apiKey: ChatbotApi().kChatBotApiKey);
  runApp(
    const OnBudget(),
  );
}

class OnBudget extends StatelessWidget {
  const OnBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Themes().theme(context),
        routes: Routes().routes,
        // home: const HomeView(),
        initialRoute: OnBoardingScreens.id,
      ),
    );
  }
}
