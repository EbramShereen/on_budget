import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  Splash({
    Key? key,
    required this.imageUrl,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.tap,
    required this.slideUrl,
  }) : super(key: key);

  String imageUrl;
  String text1;
  String text2;
  String text3;

  VoidCallback tap;
  String slideUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image.asset(
            imageUrl,
          ),
        ),
        Expanded(
          child: Center(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color(0xFF006880),
              ),
              child: Column(
                children: [
                  const Gap(70),
                  Text(
                    text1,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(35),
                  Text(
                    text2,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(10),
                  Text(
                    text3,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(75),
                  ElevatedButton(
                    onPressed: () {
                      tap();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFFFF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      enableFeedback: false,
                      fixedSize: const Size(100, 50),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        color: Color(0xFF006880),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Gap(80),
                  SvgPicture.asset(slideUrl),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
