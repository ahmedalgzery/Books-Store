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
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) =>  Padding(
              padding: const EdgeInsets.only(top: 20),
              child: BookListViewItem(bookModel: state.books[index],),
            ),
            itemCount: 10,
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErorrWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();  
        }
      },
    );
  }
}
