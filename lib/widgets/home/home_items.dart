import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/assets/colors/colors.dart';

class HomeItems extends StatelessWidget {
  const HomeItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: 150,
        height: 173,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 120,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                      'lib/assets/home/Fashion-Model-Man-Transparent.png'),
                ),
              ),
            ),
            const Gap(5),
            Text(
              'American Heels',
              style: TextStyle(
                color: AppColors.baseTxt,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                const Gap(15),
                Text(
                  '\$39.99',
                  style: TextStyle(
                    color: AppColors.salePrice,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(10),
                Text(
                  '\$39.50',
                  style: TextStyle(
                      fontSize: 10,
                      color: AppColors.priceBeforeSale,
                      decoration: TextDecoration.lineThrough),
                ),
                const Gap(20),
                const Icon(
                  Icons.favorite_border,
                  color: Color(0xFF8A8D9F),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
