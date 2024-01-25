import 'package:flutter/material.dart';
import 'package:on_budget/views/generate_image/generate_t-shirt.dart';
import 'package:on_budget/widgets/home/home_category.dart';

class HomeCategoryListview extends StatelessWidget {
  HomeCategoryListview({
    super.key,
  });

  List<HomeCategory> category = [
    HomeCategory(
      tap: (context) => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const GenerateTshirt(),
          )),
      image: 'lib/assets/home/print_t-shirt.png',
      imageWidth: 50,
      text1: 'Make Your',
      text2: 'Own T-shirt',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: category.length,
      itemBuilder: (context, index) => category[index].build(context),
    );
  }
}
