import 'package:flutter/material.dart';
import 'package:on_budget/src/utils/components/text_form_field.dart';

class AddProductsInputsWidget extends StatelessWidget {
  AddProductsInputsWidget({super.key});
  final TextEditingController productNameCont = TextEditingController();
  final TextEditingController productDescriptionCont = TextEditingController();
  final TextEditingController productPriceCont = TextEditingController();
  final TextEditingController productColorCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFieldWidget(
          controller: productNameCont,
          paddingbottom: 0,
          keyboardType: TextInputType.name,
          labelText: 'Name',
          validate: (value) {
            if (value!.isEmpty && value == '' && value == ' ') {
              return 'please enter name';
            }
            return null;
          },
        ),
        TextFormFieldWidget(
          paddingTop: 20,
          paddingbottom: 0,
          controller: productDescriptionCont,
          keyboardType: TextInputType.multiline,
          labelText: 'Description',
          validate: (value) {
            if (value!.isEmpty && value == '' && value == ' ') {
              return 'please enter description';
            }
            return null;
          },
        ),
        TextFormFieldWidget(
          paddingTop: 20,
          paddingbottom: 0,
          controller: productPriceCont,
          keyboardType: TextInputType.name,
          labelText: 'Price',
          validate: (value) {
            if (value!.isEmpty && value == '' && value == ' ') {
              return 'please enter price';
            }
            return null;
          },
        ),
        TextFormFieldWidget(
          paddingTop: 20,
          paddingbottom: 0,
          controller: productColorCont,
          keyboardType: TextInputType.name,
          labelText: 'Color',
          validate: (value) {
            if (value!.isEmpty && value == '' && value == ' ') {
              return 'please enter Color';
            }
            return null;
          },
        ),
      ],
    );
  }
}
