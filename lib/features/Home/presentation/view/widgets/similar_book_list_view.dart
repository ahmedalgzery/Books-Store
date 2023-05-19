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
  return SizedBox(
    height: MediaQuery.of(context).size.height * .15,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: CustomBookImage(
            imageUrl: ,
          ),
        );
      },
    ),
  );
}
else if(state is SimilarBooksFailure){
  return CustomErorrWidget(errMessage: state.errMessage);
}
else{
  return CustomLoadingIndicator();
}
      },
    );
  }
}
