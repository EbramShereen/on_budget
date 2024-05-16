import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../../../utils/components/button.dart';
import '../../../../utils/helper/constants/colors.dart';

class GenerateTshirtResult extends StatelessWidget {
  GenerateTshirtResult({super.key, required this.bytes});
  Uint8List bytes;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            width: 320,
            height: 300,
            clipBehavior: Clip.antiAlias,
            child: Image.memory(
              bytes,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                textSize: 14,
                text: 'Add To Cart',
                tap: () {},
                width: 200,
                colorBtn: kPrimaryColor,
                colorTxt: kSecondaryColor,
                height: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
