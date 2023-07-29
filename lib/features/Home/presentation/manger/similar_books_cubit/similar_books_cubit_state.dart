part of 'similar_books_cubit_cubit.dart';

// Abstract class representing the different states for similar books
abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

// Initial state for similar books
class SimilarBooksInitial extends SimilarBooksState {}

// State indicating that similar books data is being loaded
class SimilarBooksLoading extends SimilarBooksState {}

// State representing successful retrieval of similar books data
class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccess(this.books);
}

// State representing an error when fetching similar books data
class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksFailure(this.errMessage);
}
