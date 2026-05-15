import 'package:bookly_app/core/Errors/failures.dart';
import 'package:bookly_app/features/Home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/Data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
