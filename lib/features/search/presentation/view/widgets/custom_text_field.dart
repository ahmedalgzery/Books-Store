import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // Suffix icon for the text field, displaying a magnifying glass icon.
        suffixIcon: IconButton(
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
          onPressed: () {
            // Add your search functionality here.
            // This callback will be triggered when the magnifying glass icon is tapped.
          },
        ),
        // Hint text displayed inside the text field when it's empty.
        hintText: 'Search',
        // Border style for the text field with rounded corners.
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
