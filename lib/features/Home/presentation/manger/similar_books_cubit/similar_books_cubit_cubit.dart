import 'package:equatable/equatable.dart';
import 'package:bookstore/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookstore/features/Home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_cubit_state.dart';

// SimilarBooksCubit class that extends Cubit to manage state
class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  // Repository to fetch similar books data
  final HomeRepo homeRepo;

  // Asynchronous function to fetch similar books based on a category
  Future<void> fetchSimilarBooks({required String category}) async {
    // Emitting SimilarBooksLoading state to indicate that data is being fetched
    emit(SimilarBooksLoading());

    // Fetching the similar books data from the repository for the specified category
    var result = await homeRepo.fetchSimilarBooks(category: category);

    // Handling the result of the data fetching process
    result.fold(
      // If fetching is unsuccessful, emit SimilarBooksFailure with the error message
      (failure) {
        emit(
          SimilarBooksFailure(failure.errMessage),
        );
      },
      // If fetching is successful, emit SimilarBooksSuccess with the fetched books data
      (books) {
        emit(
          SimilarBooksSuccess(books),
        );
      },
    );
  }
}
