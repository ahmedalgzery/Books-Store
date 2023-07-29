import 'package:bookstore/core/widgets/custom_erorr_widget.dart';
import 'package:bookstore/core/widgets/custom_loading_idecator.dart';
import 'package:bookstore/features/Home/presentation/manger/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          // Display a horizontal list of similar books when data is available
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: CustomBookImage(
                    imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                  ),
                );
              },
            ),
          );
        } else if(state is SimilarBooksFailure){
          // Display a custom error widget when an error occurs
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          // Display a loading indicator when data is being fetched
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
