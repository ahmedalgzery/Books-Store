import 'package:bookstore/core/utils/app_router.dart';
import 'package:bookstore/core/widgets/custom_erorr_widget.dart';
import 'package:bookstore/core/widgets/custom_loading_idecator.dart';
import 'package:bookstore/features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          // If the state is FeaturedBooksSuccess, display the list of featured books
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      // When a book is tapped, navigate to the BookDetailsView passing the bookModel as an extra
                      GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: state.books[index]);
                    },
                    child: CustomBookImage(
                      imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          // If the state is FeaturedBooksFailure, display the custom error widget with the error message
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          // If the state is neither success nor failure, display the custom loading indicator
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
