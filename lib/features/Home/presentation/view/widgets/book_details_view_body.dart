// ignore_for_file: file_names

import 'package:bookstore/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/book_details_Section.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/custom_book_details_app_bar.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                // Custom app bar displaying book details
                const CustomBookDetailsAppBar(),
                // Book details section containing book cover image, title, author, rating, and action buttons
                BookDetailsSection(bookModel: bookModel),
                // Expanded widget to push the similar books section to the bottom
                const Expanded(
                  child: SizedBox(
                    height: 50.0,
                  ),
                ),
                // Section displaying similar books
                const SimilarBooksSection(),
                const SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
