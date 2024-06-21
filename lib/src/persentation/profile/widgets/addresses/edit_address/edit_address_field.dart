import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/components/text_field_widget.dart';
import '../../../../../utils/helper/constants/colors.dart';

class EditAddressField extends StatelessWidget {
  EditAddressField({
    super.key,
    required this.text,
  });
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, color: kHintColor),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 2, left: 10, right: 10, bottom: 10),
          child: TextFieldWidget(),
        ),
      ],
    );
  }
}
