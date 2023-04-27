import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utils/assets.dart';
import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetesData.testImage),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30.0,
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child:  Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.testStyle20.copyWith(
                    fontFamily: kGTSectraFine,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
               Text('J.K. Rowling',style: Styles.testStyle14.copyWith(
                fontWeight: FontWeight.bold,
              ),),
               const SizedBox(
                height: 3.0,
              ), 
            ],
          ),
        ],
      ),
    );
  }
}
