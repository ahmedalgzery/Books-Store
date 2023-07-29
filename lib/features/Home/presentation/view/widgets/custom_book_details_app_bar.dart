import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Close button icon to go back
        IconButton(
          onPressed: () {
            // When the close button is pressed, navigate back to the previous screen using GoRouter
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
        // Shopping cart icon button (currently no functionality)
        IconButton(
          onPressed: () {
            // Add desired functionality for shopping cart here
          },
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
