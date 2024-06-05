import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../widgets/cart_product.dart';
import '../../../checkout/persentation/views/checkout_view.dart';
import '../../../../../utils/components/background.dart';
import '../../../../../utils/components/button.dart';
import '../../../../../utils/components/leading_icon.dart';
import '../../../../../utils/helper/constants/colors.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static String id = 'CartView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping cart'),
        leading: const LeadingIcon(),
      ),
      body: Background(
        child: Column(
          children: [
            const CartProduct(),
            Gap(ScreenUtil().setHeight(15)),
            const CartProduct(),
            Gap(ScreenUtil().setHeight(15)),
            const CartProduct(),
            Gap(ScreenUtil().setHeight(15)),
            const CartProduct(),
            Gap(ScreenUtil().setHeight(15)),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 120.h,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 20).r,
              child: Row(
                children: [
                  Text(
                    'Total Amount',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$509.00',
                    style: TextStyle(
                      color: const Color(0xFFFE2121),
                      fontSize: 14.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            Button(
              text: 'proceed to checkout',
              tap: () => Navigator.pushNamed(context, CheckOutView.id),
              width: 175.w,
              colorBtn: kPrimaryColor,
              colorTxt: kSecondaryColor,
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
