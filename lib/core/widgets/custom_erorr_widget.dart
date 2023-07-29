import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';

// CustomErrorWidget class to display a custom error message
class CustomErrorWidget extends StatelessWidget {
  // Constructor for the CustomErrorWidget widget
  const CustomErrorWidget({
    super.key,
    required this.errMessage,
  });

  // The error message to be displayed
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.textStyle18, // Applying a custom text style to the error message
        textAlign: TextAlign.center, // Aligning the text to the center
      ),
    );
  }
}
