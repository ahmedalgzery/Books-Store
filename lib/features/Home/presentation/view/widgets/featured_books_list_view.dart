import 'package:bookstore/core/widgets/custom_erorr_widget.dart';
import 'package:bookstore/core/widgets/custom_loading_idecator.dart';
import 'package:bookstore/features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomBookImage(),
              );
            },
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return CustomErorrWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
