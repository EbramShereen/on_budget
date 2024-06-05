import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../home/presentation/widgets/product_details/stars/five_stars.dart';
import '../../../../../utils/helper/constants/colors.dart';

class CartProduct extends StatelessWidget {
  const CartProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 335.w,
        height: 120.h,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10).w,
          ),
        ),
        child: Stack(
          children: [
            Container(
              width: 105.w,
              height: 120.h,
              decoration: ShapeDecoration(
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11).w,
                ),
              ),
            ),
            Positioned(
              left: ScreenUtil().setWidth(120),
              top: ScreenUtil().setHeight(20),
              child: Text(
                'Vinta Backpack',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: ScreenUtil().setWidth(120),
              top: ScreenUtil().setHeight(40),
              child: const Text(
                '\$79',
                style: TextStyle(
                  color: Color(0xFFFE2121),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: ScreenUtil().setWidth(120),
              top: ScreenUtil().setHeight(60),
              child: const Text(
                'Medium',
                style: TextStyle(
                  color: Color(0xFF1C2340),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: ScreenUtil().setWidth(115),
              top: ScreenUtil().setHeight(80),
              child: const FiveStars(),
            ),
            Positioned(
              left: ScreenUtil().setWidth(220),
              top: ScreenUtil().setHeight(85),
              child: const Text(
                '5',
                style: TextStyle(
                  color: Color(0xFF8A8D9F),
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: ScreenUtil().setWidth(280),
              top: ScreenUtil().setHeight(15),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border_outlined),
              ),
            ),
            Positioned(
              left: ScreenUtil().setWidth(290),
              top: ScreenUtil().setHeight(50),
              child: IconButton(
                style: ButtonStyle(
                    iconSize: WidgetStatePropertyAll(20.r),
                    backgroundColor:
                        const WidgetStatePropertyAll(kPrimaryColor),
                    iconColor: const WidgetStatePropertyAll(kSecondaryColor)),
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                ),
              ),
            ),
            Positioned(
              left: ScreenUtil().setWidth(263),
              top: ScreenUtil().setHeight(57),
              child: CircleAvatar(
                  backgroundColor: kCancelButton,
                  radius: 12.r,
                  child: const Text('1')),
            ),
            Positioned(
              left: ScreenUtil().setWidth(220),
              top: ScreenUtil().setHeight(50),
              child: IconButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      const Color(0xFFFE2121).withOpacity(.3),
                    ),
                    iconSize: WidgetStatePropertyAll(20.r),
                    iconColor: const WidgetStatePropertyAll(kSecondaryColor)),
                onPressed: () {},
                icon: const Icon(
                  Icons.remove,
                ),
              ),
            )
          ],
        ));
  }
}
