// Utility class for getting screen dimensions using MediaQuery.

import 'package:flutter/material.dart';

class MediaQuerySizes {
  // Returns the width of the screen.
  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Returns the height of the screen.
  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
