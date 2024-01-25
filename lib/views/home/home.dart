import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/components/bottom_bar.dart';
import 'package:on_budget/components/home_background.dart';
import 'package:on_budget/widgets/home/home_category_listview.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBackground(
        child: Column(
          children: [
            const Gap(55),
            const Row(
              children: [
                Gap(20),
                Text(
                  'What are you looking for today ?',
                  style: TextStyle(
                    color: Color(0xFF1C2340),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ],
            ),
            const Gap(20),
            Expanded(
              child: HomeCategoryListview(),
            ),
            const Text('data')
          ],
        ),
      ),
      bottomNavigationBar: Container(
          width: double.infinity,
          color: const Color(0xFFF9F9FF),
          child: const BottomBar()),
    );
  }
}
