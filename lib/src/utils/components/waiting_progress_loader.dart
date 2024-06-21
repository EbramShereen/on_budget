import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';

class WaitingProgressLoader extends StatefulWidget {
  const WaitingProgressLoader({
    super.key,
  });
  @override
  State<WaitingProgressLoader> createState() => _WaitingProgressLoaderState();
}

class _WaitingProgressLoaderState extends State<WaitingProgressLoader> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 150.w,
          height: 150,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: kProgressLoadingBackground),
          child: const CircularProgressIndicator(
            color: kPrimaryColor,
          )),
    );
  }
}
