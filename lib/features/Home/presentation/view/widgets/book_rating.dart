import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });

  final int rating;
  final int count;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        // Icon representing a solid star with a yellow color and size 14.0
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14.0,
        ),
        const SizedBox(
          width: 6.3,
        ),
        // Text displaying the rating value
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5.0,
        ),
        // Text displaying the count of ratings in parentheses
        Text(
          '( $count)',
          style: Styles.textStyle14.copyWith(
            color: Colors.white.withOpacity(.5),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
