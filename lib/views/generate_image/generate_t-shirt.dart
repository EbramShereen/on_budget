import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:on_budget/components/background.dart';
import 'package:on_budget/components/button.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/widgets/generate_images/generate_t-shirt_result.dart';

class GenerateTshirt extends StatefulWidget {
  const GenerateTshirt({Key? key}) : super(key: key);
  static String id = 'GenerateT-shirt';
  @override
  State<GenerateTshirt> createState() => _GenerateTshirtState();
}

class _GenerateTshirtState extends State<GenerateTshirt> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Make your own T-shirt'),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
          )),
      body: Background(
        child: Column(
          children: [
            const Gap(50),
            const Center(
              child: Text(
                'Enter Your Imagination',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Gap(27),
            const SizedBox(
              width: 250,
              height: 50,
              child: TextField(
                enableSuggestions: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Imagination Start Here',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const Gap(28),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                    textSize: 15,
                    text: 'Surprise Me',
                    tap: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    width: 105,
                    colorBtn: const Color(0xCC3D54DA),
                    colorTxt: kSecondaryColor,
                    height: 33),
                const Gap(31),
                Button(
                    textSize: 15,
                    text: 'Submit',
                    tap: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    width: 105,
                    colorBtn: kPrimaryColor,
                    colorTxt: kSecondaryColor,
                    height: 33),
              ],
            ),
            visible
                ? const Visibility(
                    visible: true,
                    child: GenerateTshirtResult(),
                  )
                : const Visibility(
                    visible: false,
                    child: GenerateTshirtResult(),
                  )
          ],
        ),
      ),
    );
  }
}
