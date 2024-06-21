import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../helper/constants/colors.dart';

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
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 50).w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HI Ebram Shereen',
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Good Morning',
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30).w,
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
                          Positioned(
                            top: ScreenUtil().setHeight(11),
                            left: ScreenUtil().setWidth(22),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 3.r,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: ScreenUtil().setWidth(25),
                        ),
                      ),
                      Gap(ScreenUtil().setWidth(20))
                    ],
                  ),
                )
              ],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFd6d9da),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ).w),
                  child: child,
                ),
              ),
            ),
          ],
        ));
  }
}
