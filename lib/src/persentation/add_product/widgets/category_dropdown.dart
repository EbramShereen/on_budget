import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

import '../../../utils/helper/functions/category_list.dart';

class CategoryDropdown extends StatelessWidget {
  const CategoryDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30).r,
      child: MultiSelectDropDown(
        searchEnabled: true,
        searchLabel: 'Search',
        options: <ValueItem>[
          ValueItem(label: items[0], value: 1),
          ValueItem(label: items[1], value: 2),
          ValueItem(label: items[2], value: 3),
          ValueItem(label: items[3], value: 4),
          ValueItem(label: items[4], value: 5),
          ValueItem(label: items[5], value: 6),
          ValueItem(label: items[6], value: 7),
          ValueItem(label: items[7], value: 8),
          ValueItem(label: items[8], value: 9),
          ValueItem(label: items[9], value: 10),
          ValueItem(label: items[10], value: 11),
          ValueItem(label: items[11], value: 12),
          ValueItem(label: items[12], value: 13),
          ValueItem(label: items[13], value: 14),
          ValueItem(label: items[14], value: 15),
          ValueItem(label: items[15], value: 16),
          ValueItem(label: items[16], value: 17),
          ValueItem(label: items[17], value: 18),
          ValueItem(label: items[18], value: 19),
          ValueItem(label: items[19], value: 20),
          ValueItem(label: items[20], value: 21),
          ValueItem(label: items[21], value: 22),
          ValueItem(label: items[22], value: 23),
          ValueItem(label: items[23], value: 24),
          ValueItem(label: items[24], value: 25),
          ValueItem(label: items[25], value: 26),
          ValueItem(label: items[26], value: 27),
          ValueItem(label: items[27], value: 28),
          ValueItem(label: items[28], value: 29),
          ValueItem(label: items[29], value: 30),
          ValueItem(label: items[30], value: 31),
          ValueItem(label: items[31], value: 32),
          ValueItem(label: items[32], value: 33),
          ValueItem(label: items[33], value: 34),
          ValueItem(label: items[34], value: 35),
          ValueItem(label: items[35], value: 36),
          ValueItem(label: items[36], value: 37),
          ValueItem(label: items[37], value: 38),
          ValueItem(label: items[38], value: 39),
          ValueItem(label: items[39], value: 40),
          ValueItem(label: items[40], value: 41),
          ValueItem(label: items[41], value: 42),
          ValueItem(label: items[42], value: 43),
          ValueItem(label: items[43], value: 44),
          ValueItem(label: items[44], value: 45),
        ],
        selectionType: SelectionType.single,
        chipConfig: const ChipConfig(
          wrapType: WrapType.wrap,
        ),
        dropdownHeight: 300,
        optionTextStyle: const TextStyle(fontSize: 16),
        selectedOptionIcon: const Icon(Icons.check_circle),
        alwaysShowOptionIcon: true,
        inputDecoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(10)).w),
        onOptionSelected: (options) {
          debugPrint(options.toString());
        },
      ),
    );
  }
}
