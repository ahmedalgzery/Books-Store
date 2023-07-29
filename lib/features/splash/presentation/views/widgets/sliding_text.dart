import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        // Wrap the text widget with SlideTransition to apply sliding animation.
        return SlideTransition(
          position: slidingAnimation, // Use slidingAnimation for the animation effect.
          child: const Text(
            'Read Free Books', // Text to display.
            textAlign: TextAlign.center, // Center-align the text.
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
