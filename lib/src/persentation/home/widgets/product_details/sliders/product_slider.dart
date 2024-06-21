import 'package:flutter/material.dart';

import '../../../../../utils/helper/constants/colors.dart';

class ProductSlider extends StatefulWidget {
  ProductSlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.division,
    required this.unit,
    required this.onChanged,
  });
  double value;
  final double min;
  final double max;
  final int division;
  final String unit;
  void Function(double)? onChanged;
  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderThemeData(
              trackHeight: 5,
              tickMarkShape: SliderTickMarkShape.noTickMark,
              activeTrackColor: kPrimaryColor,
              inactiveTrackColor: kHintColor,
              valueIndicatorColor: kPrimaryColor,
              thumbColor: const Color(0xFF006880)),
          child: Slider(
            value: widget.value,
            onChanged: widget.onChanged,
            min: widget.min,
            max: widget.max,
            mouseCursor: MouseCursor.uncontrolled,
            divisions: widget.division,
          ),
        ),
        Text(
          '${widget.value.toInt()} ${widget.unit}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
