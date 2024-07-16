import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/data/models/home/products_by_category_model.dart';
import 'package:on_budget/src/persentation/home/views/products_details.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, ProductsDetails.id, arguments: product),
      child: Container(
        width: 180.w,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)).w,
        ),
        child: Column(
          children: [
            Container(
              width: 180.w,
              height: 120.h,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)).w,
              ),
              child: Image(
                image: NetworkImage(product.frontImage),
                fit: BoxFit.fill,
              ),
            ),
            Gap(ScreenUtil().setHeight(10)),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: SizedBox(
                width: 160,
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10).r,
                  child: Text(
                    product.productName,
                    style: TextStyle(
                      color: const Color(0xFF1C2340),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Gap(ScreenUtil().setHeight(5)),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: 100.w,
                    child: Text(
                      '\$${product.unitPrice}',
                      style: TextStyle(
                        color: kSalePrice,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  enableFeedback: false,
                  icon: const Icon(Icons.favorite_border),
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    // Handle favorite logic here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
