import 'package:bloc/bloc.dart';
import 'package:bookstore/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookstore/features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_cubit_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(
        SimilarBooksFailure(failure.errMessage),
      );
    }, (books) {
      emit(
        SimilarBooksSuccess(books),
      );
    });
  }
}