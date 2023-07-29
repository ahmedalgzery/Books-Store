import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          // Placeholder shown while the image is being loaded
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          // Error widget shown when an error occurs while loading the image
          errorWidget: (context, url, error) => const Icon(Icons.error_outline),
        ),
      ),
    );
  }
}
