import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:on_budget/components/background.dart';
import 'package:on_budget/components/button.dart';
import 'package:on_budget/helper/constants.dart';
import 'package:on_budget/helper/media_query.dart';
import 'package:on_budget/widgets/generate_images/generate_t-shirt_result.dart';

/// A StatefulWidget that provides functionality for generating a custom T-shirt design.
///
/// This screen allows users to input their ideas and choose to either get a surprise design
/// or submit their idea for a custom T-shirt design. The result is displayed if the user decides to proceed.
class GenerateTshirt extends StatefulWidget {
  const GenerateTshirt({Key? key}) : super(key: key);

  /// The route id for navigating to this screen.
  static String id = 'GenerateT-shirt';

  @override
  State<GenerateTshirt> createState() => _GenerateTshirtState();
}

class _GenerateTshirtState extends State<GenerateTshirt> {
  /// Controls the visibility of the result widget.
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
            const Gap(150),
            // Displays a title encouraging the user to input their creative ideas.
            const Center(
              child: Text(
                'Enter Your Imagination',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Gap(MediaQuerySizes.getHeight(context) * .00902),
            // Provides a text field for users to input their T-shirt design ideas.
            const SizedBox(
              width: 300,
              height: 90,
              child: TextField(
                enableSuggestions:
                    true, // Suggests words based on the user's input for easier typing.
                textAlign:
                    TextAlign.center, // Centers the text inside the text field.
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(), // Adds a border around the text field.
                  hintText:
                      'Imagination Start Here', // Displays a hint to guide the user.
                  hintStyle:
                      TextStyle(color: Colors.grey), // Styles the hint text.
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Button to trigger a surprise design generation
                Button(
                    textSize: 14,
                    text: 'Surprise Me',
                    tap: () {
                      setState(() {
                        visible = !visible; // Toggle visibility of the result
                      });
                    },
                    width: 120,
                    colorBtn: const Color(0xCC3D54DA),
                    colorTxt: kSecondaryColor,
                    height: 40),
                Gap(MediaQuerySizes.getWidth(context) * .08),
                // Button to submit the user's idea and generate a custom T-shirt design
                Button(
                    textSize: 14,
                    text: 'Submit',
                    tap: () {
                      setState(() {
                        visible = !visible; // Toggle visibility of the result
                      });
                    },
                    width: 120,
                    colorBtn: kPrimaryColor,
                    colorTxt: kSecondaryColor,
                    height: 40),
              ],
            ),
            const Gap(20),
            // Conditional rendering based on the visibility state
            visible
                ? const Visibility(
                    visible: true, // Explicitly set to true for clarity
                    child:
                        GenerateTshirtResult(), // The result widget to display the generated T-shirt design
                  )
                : const Visibility(
                    visible: false, // Explicitly set to false for clarity
                    child:
                        GenerateTshirtResult(), // Remains in the widget tree but is not visible
                  )
          ],
        ),
      ),
    );
  }
}
