import 'package:flutter/material.dart';
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
              height: MediaQuery.of(context).size.height * .5,
            ),
            Text(
              textOne ?? '',
              style: TextStyle(
                fontSize:
                    textOneSize ?? MediaQuery.of(context).size.width * .06,
                fontFamily: 'Merienda',
              ),
            ),
            const Gap(5),
            Text(
              textTwo ?? '',
              style: TextStyle(
                fontSize:
                    textTwoSize ?? MediaQuery.of(context).size.width * .06,
                fontFamily: 'Merienda',
              ),
            ),
            const Gap(5),
            Text(
              textThree ?? '',
              style: TextStyle(
                fontSize:
                    textThreeSize ?? MediaQuery.of(context).size.width * .06,
                fontFamily: 'Merienda',
              ),
            )
          ],
        ),
      ),
    );
  }
}
