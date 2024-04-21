import 'package:flutter/material.dart';
import 'package:gap/gap.dart'; // Importing the Gap package to easily add space between widgets.

import 'package:on_budget/helper/constants.dart'; // Importing constants, likely for theme or layout values.
import 'package:on_budget/helper/media_query.dart'; // Importing a custom MediaQuery helper for responsive sizing.

// A StatefulWidget that represents home items in the UI.
class HomeItems extends StatefulWidget {
  // Constructor with an optional Key parameter for widget identification.
  const HomeItems({
    Key? key,
  }) : super(key: key);

  @override
  // Creating the state for this StatefulWidget.
  State<HomeItems> createState() => _HomeItemsState();
}

// The state class for HomeItems, where the dynamic changes and logic are handled.
class _HomeItemsState extends State<HomeItems> {
  bool favorite =
      false; // A boolean flag to track if the item is marked as favorite.

  @override
  Widget build(BuildContext context) {
    // Building the widget tree for HomeItems.
    return Padding(
      // Padding around the container for spacing in the layout.
      padding: EdgeInsets.only(
        left: MediaQuerySizes.getWidth(context) * .045,
      ),
      child: Container(
        // Container to hold the content, with responsive width.
        width: MediaQuerySizes.getWidth(context) * .4,
        decoration: const BoxDecoration(
          // Styling the container with color and rounded corners.
          color: kSecondaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          // Column widget to layout its children vertically.
          children: [
            Container(
              // Container for the item image with responsive size.
              width: MediaQuerySizes.getWidth(context) * .42,
              height: MediaQuerySizes.getHeight(context) * .13,
              decoration: const BoxDecoration(
                // Styling the image container with rounded corners and an image.
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                      'lib/assets/home/Fashion-Model-Man-Transparent.png'),
                ),
              ),
            ),
            Gap(MediaQuerySizes.getHeight(context) *
                .005), // Adding a small gap between the image and the text.
            Text(
              // Text widget for the item name or description.
              'Test',
              style: TextStyle(
                // Styling the text with color, font size, and weight.
                color: const Color(0xFF1C2340),
                fontSize: MediaQuerySizes.getWidth(context) * .04,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              // Row widget to layout its children horizontally.
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Gap(MediaQuerySizes.getWidth(context) *
                    .01), // Gap at the start of the row for spacing.
                Text(
                  // Text widget for the item price.
                  '\$39.99',
                  style: TextStyle(
                    // Styling the price text.
                    color: kSalePrice,
                    fontSize: MediaQuerySizes.getWidth(context) * .04,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(40), // Fixed gap to separate price and favorite icon.
                favorite
                    ? IconButton(
                        // IconButton when the item is marked as favorite.
                        enableFeedback:
                            false, // Disabling the button press feedback.
                        icon: favorite
                            ? const Icon(
                                color: Colors.red,
                                Icons.favorite,
                              )
                            : const Icon(Icons.favorite_border),
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          // Toggling the favorite status on press.
                          setState(() {
                            favorite = !favorite;
                          });
                        },
                      )
                    : IconButton(
                        // IconButton when the item is not marked as favorite.
                        enableFeedback:
                            false, // Disabling the button press feedback.
                        icon: favorite
                            ? const Icon(
                                color: Colors.red,
                                Icons.favorite,
                              )
                            : const Icon(Icons.favorite_border),
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          // Toggling the favorite status on press.
                          setState(() {
                            favorite = !favorite;
                          });
                        },
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
