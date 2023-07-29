import 'package:equatable/equatable.dart';

import 'package:bookstore/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookstore/features/Home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

// FeaturedBooksCubit class that extends Cubit to manage state
class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  // Repository to fetch featured books data
  final HomeRepo homeRepo;

  // Asynchronous function to fetch featured books
  Future<void> fetchFeaturedBooks() async {
    // Emitting FeaturedBooksLoading state to indicate that data is being fetched
    emit(FeaturedBooksLoading());

    // Fetching the featured books data from the repository
    var result = await homeRepo.fetchFeaturedBooks();

    // Handling the result of the data fetching process
    result.fold(
      // If fetching is unsuccessful, emit FeaturedBooksFailure with the error message
      (failure) {
        emit(
          FeaturedBooksFailure(failure.errMessage),
        );
      },
      // If fetching is successful, emit FeaturedBooksSuccess with the fetched books data
      (books) {
        emit(
          FeaturedBooksSuccess(books),
        );
      },
    );
  }
}
