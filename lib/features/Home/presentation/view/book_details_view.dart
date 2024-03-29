import 'package:bookstore/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookstore/features/Home/presentation/manger/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:bookstore/features/Home/presentation/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    // Fetch similar books when the widget is first initialized
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category: widget.bookModel.volumeInfo.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}
