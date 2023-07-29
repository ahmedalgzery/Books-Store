import 'package:equatable/equatable.dart';

import 'package:bookstore/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookstore/features/Home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newset_books_state.dart';

// NewsetBooksCubit class that extends Cubit to manage state
class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  // Repository to fetch newest books data
  final HomeRepo homeRepo;

  // Asynchronous function to fetch newest books
  Future<void> fetchNewestBooks() async {
    // Emitting NewsetBooksLoading state to indicate that data is being fetched
    emit(NewsetBooksLoading());

    // Fetching the newest books data from the repository
    var result = await homeRepo.fetchNewsetBooks();

    // Handling the result of the data fetching process
    result.fold(
      // If fetching is unsuccessful, emit NewsetBooksFailure with the error message
      (failure) {
        emit(
          NewsetBooksFailure(failure.errMessage),
        );
      },
      // If fetching is successful, emit NewsetBooksSuccess with the fetched books data
      (books) {
        emit(
          NewsetBooksSuccess(books),
        );
      },
    );
  }
}
