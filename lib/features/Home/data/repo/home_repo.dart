import 'package:bookstore/core/errors/failure.dart';
import 'package:bookstore/features/Home/data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}
