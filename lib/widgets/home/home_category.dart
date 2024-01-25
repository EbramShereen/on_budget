import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    Key? key,
    required this.tap,
    required this.image,
    required this.imageWidth,
    required this.text1,
    this.text2,
  }) : super(key: key);

  final VoidCallbackWithContext tap;
  final String image;
  final double imageWidth;
  final String text1;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => tap(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          width: 112,
          height: 120,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              Image.asset(image, width: imageWidth),
              Text(text1),
              Text(text2!),
            ],
          ),
        ),
      ),
    );
  }
}

typedef VoidCallbackWithContext = void Function(BuildContext context);
