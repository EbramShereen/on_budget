import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_budget/src/persentation/home/views/show_all_product_category.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({
    Key? key,
    required this.text,
    required this.index,
  }) : super(key: key);

  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20).w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200.w,
            height: 20.h,
            child: Text(
              text,
              style: TextStyle(
                color: const Color(0xFF1C2340),
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ShowAllProductsByCategory.id,
                  arguments: index);
            },
            child: Text(
              'See All +',
              style: TextStyle(
                color: const Color(0xFF8A8D9F),
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
