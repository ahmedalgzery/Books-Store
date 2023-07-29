part of 'newset_books_cubit.dart';

// Abstract class representing the different states for newest books
abstract class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

// Initial state for newest books
class NewsetBooksInitial extends NewsetBooksState {}

// State indicating that newest books data is being loaded
class NewsetBooksLoading extends NewsetBooksState {}

// State representing an error when fetching newest books data
class NewsetBooksFailure extends NewsetBooksState {
  final String errMessage;

  const NewsetBooksFailure(this.errMessage);
}

// State representing successful retrieval of newest books data
class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;

  const NewsetBooksSuccess(this.books);
}
