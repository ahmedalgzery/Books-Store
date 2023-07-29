import 'package:flutter/material.dart';

// CustomLoadingIndicator class to display a custom loading indicator
class CustomLoadingIndicator extends StatelessWidget {
  // Constructor for the CustomLoadingIndicator widget
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    // Center widget to center the CircularProgressIndicator
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
