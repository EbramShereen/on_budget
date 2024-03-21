import 'package:flutter/material.dart';

import 'package:on_budget/helper/constants.dart';

class HomeBackground extends StatelessWidget {
  HomeBackground({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: kPrimaryColor,
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 15),
              child: Text(
                'HI Ebram Shereen',
                style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 80, left: 15),
              child: Text(
                'Good Morning',
                style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Positioned(
              height: 130,
              width: 700,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  )),
            ),
            const Positioned(
              width: 708,
              top: 57,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 3,
              ),
            ),
            Positioned(
              height: 130,
              width: 765,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xFFd6d9da),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: child,
              ),
            ),
          ],
        ));
  }
}
