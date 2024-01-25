import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/assets/colors/colors.dart';
import 'package:on_budget/components/background.dart';
import 'package:on_budget/components/bottom_bar.dart';
import 'package:on_budget/components/button.dart';
import 'package:on_budget/widgets/generate_images/generate_t-shirt_result.dart';

class GenerateTshirt extends StatefulWidget {
  const GenerateTshirt({Key? key}) : super(key: key);

  @override
  State<GenerateTshirt> createState() => _GenerateTshirtState();
}

class _GenerateTshirtState extends State<GenerateTshirt> {
  bool visible = false;
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make your own T-shirt'),
        leading: const Icon(Icons.arrow_back_ios),
      ),
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
            SizedBox(
              width: 250,
              height: 50,
              child: TextField(
                controller: _textFieldController,
                enableSuggestions: true,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
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
                  colorTxt: AppColors.secondaryText,
                  height: 33,
                ),
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
                  colorBtn: AppColors.primaryBtn,
                  colorTxt: AppColors.secondaryText,
                  height: 33,
                ),
              ],
            ),
            const Gap(23),
            visible
                ? const Visibility(
                    visible: true,
                    child: GenerateTshirtResault(),
                  )
                : const Visibility(
                    visible: false,
                    child: GenerateTshirtResault(),
                  )
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
