import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/components/background.dart';
import '../../../../../utils/components/button.dart';
import '../../../../../utils/helper/constants/colors.dart';
import '../../widgets/addresses/edit_address/edit_address_field.dart';
import '../../widgets/addresses/set_default_address.dart';
import 'show_addresses.dart';

class EditAddress extends StatefulWidget {
  const EditAddress({super.key});
  static String id = 'EditAddress';

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  bool switch_ = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Address'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.delete_sweep,
              color: Colors.red,
              size: 40,
            ),
          ),
        ],
      ),
      body: Background(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Gap(40),
            EditAddressField(
              text: 'Name',
            ),
            EditAddressField(
              text: 'Telephone number',
            ),
            EditAddressField(
              text: 'Address',
            ),
            const Gap(20),
            SetDefaultAddress(
              switch_: switch_,
              onChanged: (p0) {
                setState(() {
                  switch_ = p0;
                });
              },
            ),
            const Gap(100),
            Button(
                text: 'Save',
                tap: () => const ShowAddresses(),
                width: 400,
                colorBtn: kPrimaryColor,
                colorTxt: kSecondaryColor,
                height: 50)
          ],
        ),
      )),
    );
  }
}
