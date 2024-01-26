import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/assets/colors/colors.dart';
import 'package:on_budget/components/home_background.dart';
import 'package:on_budget/widgets/home/category_home.dart';
import 'package:on_budget/widgets/home/see_all.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final List<CategoryHome> model = [
    CategoryHome(
      image: 'lib/assets/home/print_t-shirt.png',
      textLineOne: 'Make your',
      textLineTwo: 'own T-shirts',
      tap: () {},
    ),
    CategoryHome(
      image: 'lib/assets/home/shirt.png',
      textLineOne: 'T-shirt',
      tap: () {},
    ),
    CategoryHome(
      image: 'lib/assets/home/pantlon.png',
      textLineOne: 'Pants',
      tap: () {},
    ),
    CategoryHome(
      image: 'lib/assets/home/shoes.png',
      textLineOne: 'Shoes',
      tap: () {},
    ),
    CategoryHome(
      image: 'lib/assets/home/Underwear.png',
      textLineOne: 'UnderWear',
      tap: () {},
    ),
    CategoryHome(
        image: 'lib/assets/home/blazer.png', textLineOne: 'Blazer', tap: () {})
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBackground(
        child: Column(
          children: [
            const Gap(40),
            Text(
              'What are you looking for today ?',
              style: TextStyle(
                color: AppColors.baseTxt,
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const Gap(15),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: model.length,
                itemBuilder: (context, index) => model[index],
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SeeAll(),
            Container()
          ],
        ),
      ),
    );
  }
}
