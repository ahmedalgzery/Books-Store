// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/book_rating.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/books_action.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 35,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Ahmed Algzery',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(.7),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37.0,
        ),
        const BookAction(),
      ],
    );
  }
}
