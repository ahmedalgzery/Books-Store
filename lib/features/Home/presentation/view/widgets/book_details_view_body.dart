import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/book_rating.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/custom_book_details_app_bar.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDetailesAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.testStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Ahmed Algzery',
            style: Styles.testStyle18.copyWith(
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
        ],
      ),
    );
  }
}
