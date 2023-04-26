import 'package:bookstore/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7/ 4,
        child: Container(
          width: 100,
          
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetesData.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
