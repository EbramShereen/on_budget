import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';

class Themes {
  ThemeData theme(BuildContext context) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
      useMaterial3: true,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      fontFamily: GoogleFonts.roboto().fontFamily,
      appBarTheme: const AppBarTheme(
        actionsIconTheme: IconThemeData(),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 30),
        elevation: 0,
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}
