import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../utils/components/background.dart';
import '../../../../utils/components/leading_icon.dart';
import '../../../../utils/helper/constants/colors.dart';
import '../../widgets/addresses/set_default_address.dart';
import '../../widgets/addresses/show_addresses/add_new_address_button/add_new_address.dart';
import '../../widgets/addresses/show_addresses/address_card.dart';

class ShowAddresses extends StatefulWidget {
  const ShowAddresses({super.key});
  static String id = 'ShowAddresses';

  @override
  State<ShowAddresses> createState() => _ShowAddressesState();
}

class _ShowAddressesState extends State<ShowAddresses> {
  bool switch_ = false;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Addresses'),
        leading: LeadingIcon(
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Background(
        child: Column(
          children: [
            const Gap(50),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Addresses',
                  style: TextStyle(
                      fontSize: 20,
                      color: kHintColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const Gap(20),
            const AddressCard(),
            const Gap(25),
            SetDefaultAddress(
              switch_: switch_,
              onChanged: (p0) {
                setState(() {
                  switch_ = p0;
                });
              },
            ),
            const Gap(25),
            const AddNewAddress()
          ],
        ),
      ),
    );
  }
}
