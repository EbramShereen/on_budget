import 'package:flutter/material.dart';
import 'package:on_budget/assets/colors/colors.dart';

class CategoryHome extends StatelessWidget {
  CategoryHome({
    super.key,
    required this.image,
    required this.textLineOne,
    required this.textLineTwo,
    required this.tap,
  });
  final String image;
  final String textLineOne;
  final String? textLineTwo;
  final VoidCallback tap;
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 150,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: 100,
            height: 100,
          ),
          Text(
            textLineOne,
            style: const TextStyle(fontSize: 15),
          ),
          Text(
            textLineTwo!,
            style: const TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
