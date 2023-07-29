// ignore_for_file: use_build_context_synchronously

import 'package:bookstore/core/utils/functions/custom_snac_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Function to launch a custom URL
Future<void> launchCustomUrl(BuildContext context, String? url) async {
  // Check if the URL is not null
  if (url != null) {
    // Parse the URL string into a Uri object
    Uri uri = Uri.parse(url);

    // Check if the URL can be launched using the platform's URL launcher
    if (await canLaunchUrl(uri)) {
      // Launch the URL using the platform's URL launcher
      await launchUrl(uri);
    } else {
      // Show a custom SnackBar if the URL cannot be launched
      customSnackbar(context, 'Cannot launch $url');
    }
  }
}
