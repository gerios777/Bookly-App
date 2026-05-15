import 'package:bookly_app/core/Errors/failures.dart';
import 'package:bookly_app/core/utils/api_servece.dart';
import 'package:bookly_app/features/Home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/Data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServece apiServece;
  HomeRepoImpl(this.apiServece);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiServece.get(
        endPoint:
            "volumes?filter=free-ebooks&orderBy=newest&key=AIzaSyDaKEQOQmOUIFJEr-tx-oCPAOeUsxR0Fyg&q=suoject:Programming",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
