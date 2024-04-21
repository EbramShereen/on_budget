// This class defines a customizable AppBar widget for use within Flutter applications.
// It extends StatelessWidget, indicating that it is an immutable widget that does not hold any state.
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  // Constructor for AppBarWidget, allowing optional customization parameters such as text, style, icon, actions, and elevation.
  AppBarWidget(
      {super.key, // Key for identifying the widget within the tree.
      this.text, // Optional text to display in the AppBar.
      this.style, // Optional TextStyle for the text.
      this.icon, // Optional leading icon, defaults to a back arrow if not provided.
      this.actions, // Optional list of Widgets to display at the end of the AppBar.
      this.elevation}); // Optional elevation for the AppBar, defaults to 0 if not provided.

  // Nullable fields for customization parameters.
  String? text;
  TextStyle? style;
  Icon? icon;
  List<Widget>? actions;
  double? elevation;

  @override
  Widget build(BuildContext context) {
    // Builds the AppBar widget with the provided customization options.
    return AppBar(
      title: Text(
        text ??
            '', // Uses the provided text or an empty string if text is null.
        style: style, // Applies the provided TextStyle if any.
      ),
      leading: IconButton(
        onPressed: () => Navigator.pop(context), // Navigates back on press.
        icon: icon ??
            const Icon(Icons
                .arrow_back_ios_new), // Uses the provided icon or a default back arrow.
      ),
      actions: actions, // Adds the provided action widgets to the AppBar.
      elevation: elevation ?? 0, // Sets the AppBar elevation, defaulting to 0.
    );
  }
}
