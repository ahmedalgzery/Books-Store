part of 'featured_books_cubit.dart';

// Abstract class representing the different states for featured books
abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

// Initial state for featured books
class FeaturedBooksInitial extends FeaturedBooksState {}

// State indicating that featured books data is being loaded
class FeaturedBooksLoading extends FeaturedBooksState {}

// State representing an error when fetching featured books data
class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFailure(this.errMessage);
}

// State representing successful retrieval of featured books data
class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}
