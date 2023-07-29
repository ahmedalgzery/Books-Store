import 'package:flutter/material.dart';

// Function to display a custom SnackBar
void customSnackbar(BuildContext context, String text) {
  // ScaffoldMessenger is used to manage the display of SnackBars across the app
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      // The content of the SnackBar, which is a simple text widget
      content: Text(text),
    ),
  );
}
