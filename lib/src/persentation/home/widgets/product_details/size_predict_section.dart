import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/persentation/home/widgets/product_details/sliders/size_sliders.dart';

class SizePredictSection extends StatefulWidget {
  const SizePredictSection({super.key});

  @override
  _SizePredictSectionState createState() => _SizePredictSectionState();
}

class _SizePredictSectionState extends State<SizePredictSection> {
  double height = 150;
  double weight = 55;
  double age = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizeSliders(
          valueHeight: height,
          valueWeight: weight,
          valueAge: age,
          onChanged: (newHeight, newWeight, newAge) {
            setState(() {
              height = newHeight;
              weight = newWeight;
              age = newAge;
            });
          },
        ),
        Gap(ScreenUtil().setHeight(20)),
        const Text(
          'Recommended Size: ',
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}
