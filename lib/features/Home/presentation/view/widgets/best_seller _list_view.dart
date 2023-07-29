// ignore_for_file: file_names

import 'package:bookstore/core/widgets/custom_erorr_widget.dart';
import 'package:bookstore/core/widgets/custom_loading_idecator.dart';
import 'package:bookstore/features/Home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';

import 'package:bookstore/features/Home/presentation/view/widgets/best_seller_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BsetSellerListView extends StatelessWidget {
  const BsetSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        // Check if the state is NewsetBooksSuccess
        if (state is NewsetBooksSuccess) {
          // If it is, display a ListView.builder to build a list of best-selling books
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) =>  Padding(
              padding: const EdgeInsets.only(top: 20),
              // Use the BookListViewItem widget to display each book in the list
              child: BookListViewItem(bookModel: state.books[index],),
            ),
            // Set the itemCount to limit the number of books displayed (in this case, 10)
            itemCount: 10,
          );
        } 
        // Check if the state is NewsetBooksFailure
        else if (state is NewsetBooksFailure) {
          // If it is, display a CustomErrorWidget with the error message
          return CustomErrorWidget(errMessage: state.errMessage);
        } 
        // If the state is not NewsetBooksSuccess or NewsetBooksFailure, it is in a loading state
        else {
          // Display a CustomLoadingIndicator while fetching the newest books
          return const CustomLoadingIndicator();  
        }
      },
    );
  }
}
