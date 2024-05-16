import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../helper/constants/colors.dart';
import '../helper/functions/responsive.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: kPrimaryColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HI Ebram Shereen',
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Good Morning',
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuerySizes.getHeight(context) * .05),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_none,
                                color: Colors.white,
                                size: 35,
                              )),
                          const Positioned(
                            top: 13,
                            left: 28,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 4,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      const Gap(20)
                    ],
                  ),
                )
              ],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFd6d9da),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: child,
                ),
              ),
            ),
          ],
        ));
  }
}
