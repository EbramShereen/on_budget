import 'package:flutter/material.dart';
import 'package:on_budget/widgets/home/category/category_home.dart';

class CategoryHomeListView extends StatelessWidget {
  CategoryHomeListView({
    super.key,
  });

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
      textLineTwo: '',
      tap: () {},
    ),
    CategoryHome(
      image: 'lib/assets/home/pantlon.png',
      textLineOne: 'Pants',
      textLineTwo: '',
      tap: () {},
    ),
    CategoryHome(
      image: 'lib/assets/home/shoes.png',
      textLineOne: 'Shoes',
      textLineTwo: '',
      tap: () {},
    ),
    CategoryHome(
      image: 'lib/assets/home/underwear.png',
      textLineOne: 'UnderWear',
      textLineTwo: '',
      tap: () {},
    ),
    CategoryHome(
      image: 'lib/assets/home/blazer.png',
      textLineOne: 'Blazer',
      textLineTwo: '',
      tap: () {},
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: model.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => model[index],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
