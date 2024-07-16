import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:on_budget/src/persentation/add_product/widgets/add_product_inputs_widget.dart';
import 'package:on_budget/src/persentation/add_product/widgets/category_dropdown.dart';
import 'package:on_budget/src/utils/components/button.dart';
import 'package:on_budget/src/utils/components/leading_icon.dart';
import 'package:on_budget/src/utils/components/show_dialog.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';
import 'package:on_budget/src/utils/helper/constants/images.dart';
import 'package:on_budget/src/persentation/add_product/widgets/add_image.dart';
import 'package:on_budget/src/utils/helper/functions/category_list.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});
  static String id = 'AddProduct';
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  File? image;
  final picker = ImagePicker();
  MultiSelectController<dynamic>? controller;

//Image Picker function to get image from gallery
  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }

  Future getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }

  Future showOptions(context) async {
    return showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: const Text('Photo Gallery'),
            onPressed: () {
              // close the options modal
              Navigator.of(context).pop();
              // get image from gallery
              getImageFromGallery();
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Camera'),
            onPressed: () {
              Navigator.of(context).pop();
              getImageFromCamera();
            },
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    showOptions(context);
  }

  String? productName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Product'),
          leading: const LeadingIcon(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AddProductsInputsWidget(),
              Gap(ScreenUtil().setHeight(20)),
              const CategoryDropdown(),
              Gap(ScreenUtil().setHeight(20)),
              const AddProductImage(),
              Gap(ScreenUtil().setHeight(40)),
              Button(
                  text: 'Submit',
                  width: 150,
                  tap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: const Text('Product Added Successefly'),
                          actions: [
                            Center(
                              child: Button(
                                  text: 'okay',
                                  width: 100,
                                  colorBtn: kPrimaryColor,
                                  tap: () => Navigator.pop(context),
                                  colorTxt: kSecondaryColor,
                                  height: 50),
                            )
                          ],
                        );
                      },
                    );
                  },
                  colorBtn: kPrimaryColor,
                  colorTxt: kSecondaryColor,
                  height: 50)
            ],
          ),
        ));
  }
}
