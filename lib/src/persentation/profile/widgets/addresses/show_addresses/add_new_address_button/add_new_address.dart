import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utils/helper/constants/colors.dart';
import 'dot_border.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 400.w,
        height: 75,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
          color: kSecondaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 350.w,
            height: 50,
            decoration: const BoxDecoration(
              color: kSecondaryColor,
            ),
            child: CustomPaint(
              painter: DotPattern(
                color: const Color(0xFF707070),
                space: 20,
              ),
              child: ClipPath(
                clipper: DottedEdgeClipper(),
                child: Container(
                  color: Colors.transparent,
                  child: const Center(
                      child: Text(
                    'Add new address',
                    style: TextStyle(color: kHintColor, fontSize: 16),
                  )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
