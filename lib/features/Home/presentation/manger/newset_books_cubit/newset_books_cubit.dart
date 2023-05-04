// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookstore/features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

import 'package:bookstore/features/Home/data/Models/book_model/book_model.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
   final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure) {
      emit(
        NewsetBooksFailure(failure.errMessage),
      );
    }, (books) {
      emit(
        NewsetBooksSuccess(books),
      );
    });
  }
}
