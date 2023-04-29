import 'package:bookstore/features/Home/presentation/view/widgets/book_details_Section.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/custom_book_details_app_bar.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookDetailesAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50.0,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
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




