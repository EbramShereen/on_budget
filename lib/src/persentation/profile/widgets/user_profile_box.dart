import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/helper/constants/colors.dart';
import '../../../utils/helper/constants/images.dart';

class UserProfileBox extends StatelessWidget {
  const UserProfileBox({
    super.key,
  });
  // this class if for profile screen and has profile picture, edit profile picture icon and full name of user

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        width: 400.w,
        height: 180.h,
        child: Stack(
          children: [
            //profile picture
            Positioned(
              top: ScreenUtil().setHeight(20),
              left: ScreenUtil().setWidth(120),
              child: CircleAvatar(
                radius: 50.r,
                child: const Image(
                  image: AssetImage(kBoyIcon),
                ),
              ),
            ),

            //edit profile picture icon
            Positioned(
              top: ScreenUtil().setHeight(90),
              left: ScreenUtil().setWidth(120),
              child: CircleAvatar(
                backgroundColor: kPrimaryColor,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: kThirdColor,
                  ),
                ),
              ),
            ),

            //full name
            Positioned(
              top: ScreenUtil().setHeight(140),
              left: ScreenUtil().setWidth(105),
              child: Text(
                'Ebram Shereen',
                style: TextStyle(fontSize: 25.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
