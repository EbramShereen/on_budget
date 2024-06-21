import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/persentation/home/widgets/product_details/stars/five_stars.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';

class ProductsReviews extends StatelessWidget {
  const ProductsReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Reviews (415)',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            Text(
              'See all reviews',
              style: TextStyle(
                color: kHintColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: [
            CircleAvatar(
              radius: ScreenUtil().radius(20),
            ),
            Gap(ScreenUtil().setWidth(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alexa',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Gap(ScreenUtil().setHeight(3)),
                Text(
                  '01-06-2021',
                  style: TextStyle(
                    color: const Color(0xFFABABB7),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const FiveStars(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gap(ScreenUtil().setWidth(30)),
            SizedBox(
              width: 255.w,
              height: 100.h,
              child: Text(
                'I have bought over 10 suits from this seller ...wow ...what a service ...they have size and customize my suits to a perfect and',
                style: TextStyle(
                  color: kHintColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
