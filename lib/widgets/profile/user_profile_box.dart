import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:on_budget/helper/constants.dart';

class UserProfileBox extends StatelessWidget {
  const UserProfileBox({
    super.key,
  });
  // this class if for profile screen and has profile picture, edit profile picture icon and full name of user

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      width: 400,
      height: 180,
      child: Stack(
        children: [
          //profile picture
          const Positioned(
            top: 20,
            left: 150,
            child: CircleAvatar(
              radius: 50,
              child: Image(
                image: AssetImage(kBoyIcon),
              ),
            ),
          ),

          //edit profile picture icon
          Positioned(
            top: 80,
            right: 140,
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
          const Positioned(
            top: 130,
            left: 145,
            child: Text(
              'Full Name',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
