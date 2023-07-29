import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';

// CustomButton class to create a custom-styled text button
class CustomButton extends StatelessWidget {
  // Constructor for the CustomButton widget
  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
    this.textColor,
    this.backgroundColor,
    this.borderRadius,
  });

  // Callback function for button press
  final void Function()? onPressed;

  // Text to be displayed on the button
  final String text;

  // Text color of the button
  final Color? textColor;

  // Background color of the button
  final Color? backgroundColor;

  // BorderRadius of the button
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: TextButton(
        // Styling for the button using TextButton.styleFrom
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16.0),
          ),
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed, // Callback function for button press
        child: Text(
          text,
          // Applying a custom text style to the button text
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w900, // Setting font weight to bold
            color: textColor, // Applying custom text color if provided
          ),
        ),
      ),
    );
  }
}
