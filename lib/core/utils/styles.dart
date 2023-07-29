import 'package:flutter/material.dart';

// Abstract class for storing various text styles
abstract class Styles {
  // TextStyle constant for text with font size 18 and semi-bold weight
  static const textStyle18 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );

  // TextStyle constant for text with font size 20 and normal weight
  static const textStyle20 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.normal,
  );

  // TextStyle constant for text with font size 14 and normal weight
  static const textStyle14 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
  );

  // TextStyle constant for text with font size 16 and medium weight
  static const textStyle16 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );

  // TextStyle constant for text with font size 30 and bold weight
  static const textStyle30 = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );
}
