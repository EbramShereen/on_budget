import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:on_budget/helper/constants.dart';

class HomeItems extends StatefulWidget {
  const HomeItems({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeItems> createState() => _HomeItemsState();
}

class _HomeItemsState extends State<HomeItems> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
      ),
      child: Container(
        width: 150,
        height: 173,
        decoration: const BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.all(
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
            const Text(
              'American Heels',
              style: TextStyle(
                color: Color(0xFF1C2340),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                const Gap(15),
                const Text(
                  '\$39.99',
                  style: TextStyle(
                    color: kSalePrice,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(40),
                IconButton(
                  enableFeedback: false,
                  icon: pressed
                      ? const Icon(
                          color: Colors.red,
                          Icons.favorite,
                        )
                      : const Icon(Icons.favorite_border),
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      pressed = !pressed;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
