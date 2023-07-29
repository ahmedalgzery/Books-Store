import 'package:bookstore/core/utils/app_router.dart';
import 'package:bookstore/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        bottom: 20,
        right: 18,
      ),
      child: Row(
        children: [
          // App logo displayed using an image asset
          Image.asset(
            AssetsData.logo,
            height: 20.0,
          ),
          const Spacer(),
          // Icon button to navigate to the search view
          IconButton(
            onPressed: () {
              // When the search icon is pressed, navigate to the search view using GoRouter
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
