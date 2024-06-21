import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class CustomOnBoarding extends StatelessWidget {
  CustomOnBoarding({
    super.key,
    this.textOne,
    this.textTwo,
    this.textThree,
    this.textOneSize,
    this.textTwoSize,
    this.textThreeSize,
  });
  String id = 'onBoarding';

  String? textOne;
  String? textTwo;
  String? textThree;
  double? textOneSize;
  double? textTwoSize;
  double? textThreeSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 430.h,
            ),
            Text(
              textOne ?? '',
              style: TextStyle(
                fontSize: textOneSize ?? 20.sp,
                fontFamily: 'Merienda',
              ),
            ),
            Gap(ScreenUtil().setHeight(10)),
            Text(
              textTwo ?? '',
              style: TextStyle(
                fontSize: textTwoSize ?? 20.sp,
                fontFamily: 'Merienda',
              ),
            ),
            Gap(ScreenUtil().setHeight(10)),
            Text(
              textThree ?? '',
              style: TextStyle(
                fontSize: textThreeSize ?? 20.sp,
                fontFamily: 'Merienda',
              ),
            )
          ],
        ),
      ),
    );
  }
}
