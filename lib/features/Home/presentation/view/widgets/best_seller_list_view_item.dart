import 'package:bookstore/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: 
        [
          AspectRatio(
      aspectRatio: 2.5/ 4,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetesData.testImage),
          ),
        ),
      ),
    ),
    Column(
      children: 
      [
        
      ],
    ),
        ],
      ),
    );
  }
}