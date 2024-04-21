import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';

// ignore: must_be_immutable
class HomeBackground extends StatelessWidget {
  HomeBackground({super.key, required this.child});
  Widget child;
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
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuerySizes.getWidth(context) * .05,
                      top: MediaQuerySizes.getHeight(context) * .05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HI Ebram Shereen',
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: MediaQuerySizes.getWidth(context) * .05,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Good Morning',
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: MediaQuerySizes.getWidth(context) * .05,
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
                      Container(
                        child: Stack(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications_none,
                                  color: Colors.white,
                                )),
                            Positioned(
                              top: MediaQuerySizes.getHeight(context) * .016,
                              left: MediaQuerySizes.getWidth(context) * .055,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius:
                                    MediaQuerySizes.getWidth(context) * .0059,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Gap(MediaQuerySizes.getWidth(context) * .05)
                    ],
                  ),
                )
              ],
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuerySizes.getHeight(context) * .01),
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
