// ignore_for_file: file_names

import 'package:bookstore/features/Home/data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'package:bookstore/core/utils/styles.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/book_rating.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/books_action.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(.7),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: bookModel.volumeInfo.pageCount ?? 0,
          rating: bookModel.volumeInfo.pageCount ?? 0,
        ),
        const SizedBox(
          height: 37.0,
        ),
         BookAction(bookModel: bookModel,),
      ],
    );
  }
}
