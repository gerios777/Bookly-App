import 'package:bookly_app/core/Errors/failures.dart';
import 'package:bookly_app/features/Home/Data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
