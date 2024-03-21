import 'package:flutter/material.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/views/login/login.dart';
import 'package:on_budget/views/register/signup_options.dart';
import 'package:on_budget/widgets/splash/custom_onboarding.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnBoardingScreens extends StatelessWidget {
  const OnBoardingScreens({super.key});
  static const String id = 'onBoardingScreens';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        // finish button =====> that arrow convert to register button
        finishButtonText: 'Register',

        // navigator of finish button
        onFinish: () => Navigator.pushNamed(context, SignupOptions.id),

        // finish button style
        skipIcon: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),

        // background color of upper screen in the (skip/login) button
        headerBackgroundColor: const Color(0xFFEBC49F),

        // background color of bottom screen in the (arrow/register) button
        pageBackgroundColor: const Color(0xFFEBC49F),

        //if true we delete arrow button , slider and we put register buttom from first screen
        hasSkip: true,
        finishButtonStyle: const FinishButtonStyle(
          backgroundColor: kPrimaryColor,
        ),

        // skip button
        skipTextButton: ElevatedButton(

            // navigation.pushnamed() ====> it navigate by id of screen
            //for more info. go to main.dart
            onPressed: () => Navigator.pushNamed(context, SignupOptions.id),
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
            ),
            child: const Text(
              'Skip',
              style: TextStyle(color: Colors.white),
            )),

        // login button
        trailing: ElevatedButton(

            // navigation.pushnamed() ====> it navigate by id of screen
            //for more info. go to main.dart
            onPressed: () => Navigator.pushNamed(context, Login.id),
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
            ),
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),

        // slider color
        controllerColor: kPrimaryColor,
        background: [
          Image.asset(
            kOnBoardingOne,
          ),
          Image.asset(kOnBoardingTwo),
          Image.asset(kOnBoardingThree),
        ],
        //speed of background list show in screen
        speed: 1.8,
        totalPage: 3,
        // content of text in every screen
        pageBodies: [
          CustomOnBoarding(
            textOne: 'Chat Anywhere, Anytime',
            textTwo: 'Your Conversations, Your Space.',
          ),
          CustomOnBoarding(
            textOne: 'Express Yourself with Emojis',
            textTwo: 'Where Every Message Brings Joy.',
          ),
          CustomOnBoarding(
            textOne: 'Stickers Speak Louder Than Words',
            textTwo: 'Chat with Personality.',
          ),
        ],
      ),
    );
  }
}
