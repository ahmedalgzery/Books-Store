// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void CustomSnacbar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}
