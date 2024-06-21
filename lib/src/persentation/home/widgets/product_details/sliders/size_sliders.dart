import 'package:flutter/material.dart';
import 'package:on_budget/src/persentation/home/widgets/product_details/sliders/product_slider.dart';

class SizeSliders extends StatefulWidget {
  final double valueHeight;
  final double valueWeight;
  final double valueAge;
  final Function(double, double, double) onChanged;

  SizeSliders({
    required this.valueHeight,
    required this.valueWeight,
    required this.valueAge,
    required this.onChanged,
  });

  @override
  State<SizeSliders> createState() => _SizeSlidersState();
}

class _SizeSlidersState extends State<SizeSliders> {
  late double height;
  late double weight;
  late double age;

  @override
  void initState() {
    super.initState();
    height = widget.valueHeight;
    weight = widget.valueWeight;
    age = widget.valueAge;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ProductSlider(
              value: height,
              min: 130,
              max: 200,
              division: 70,
              unit: 'CM',
              onChanged: (value) {
                setState(() {
                  height = value;
                });
                widget.onChanged(height, weight, age);
              },
            ),
            ProductSlider(
              value: weight,
              min: 40,
              max: 200,
              division: 70,
              unit: 'KG',
              onChanged: (value) {
                setState(() {
                  weight = value;
                });
                widget.onChanged(height, weight, age);
              },
            ),
          ],
        ),
        ProductSlider(
          value: age,
          min: 10,
          max: 100,
          division: 70,
          unit: 'Years',
          onChanged: (value) {
            setState(() {
              age = value;
            });
            widget.onChanged(height, weight, age);
          },
        ),
      ],
    );
  }
}
