import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';
import 'package:on_budget/src/utils/helper/functions/responsive.dart';

class HomeItems extends StatefulWidget {
  const HomeItems({Key? key}) : super(key: key);

  @override
  State<HomeItems> createState() => _HomeItemsState();
}

class _HomeItemsState extends State<HomeItems> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: Container(
        width: 180,
        decoration: const BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 180,
              height: 130,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                      'lib/src/res/images/home/Fashion-Model-Man-Transparent.png'),
                ),
              ),
            ),
            const Gap(10),
            const Text(
              'Test',
              style: TextStyle(
                color: Color(0xFF1C2340),
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Gap(5),
                const Text(
                  '\$39.99',
                  style: TextStyle(
                    color: kSalePrice,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(40),
                favorite
                    ? IconButton(
                        enableFeedback: false,
                        icon: favorite
                            ? const Icon(
                                color: Colors.red,
                                Icons.favorite,
                              )
                            : const Icon(Icons.favorite_border),
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            favorite = !favorite;
                          });
                        },
                      )
                    : IconButton(
                        enableFeedback: false,
                        icon: favorite
                            ? const Icon(
                                color: Colors.red,
                                Icons.favorite,
                              )
                            : const Icon(Icons.favorite_border),
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            favorite = !favorite;
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
