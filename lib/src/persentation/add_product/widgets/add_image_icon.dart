import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/utils/helper/constants/images.dart';

class AddImageIcon extends StatelessWidget {
  const AddImageIcon({super.key, required this.onTap, required this.title});
  final Function()? onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20).r,
          child: Text(
            title,
            style: TextStyle(fontSize: 25.sp),
          ),
        ),
        Gap(ScreenUtil().setHeight(10)),
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(left: 25).r,
            child: SizedBox(
                width: 150.w,
                height: 100.h,
                child: Image.asset(kAddProductIcon)),
          ),
        ),
      ],
    );
  }
}
