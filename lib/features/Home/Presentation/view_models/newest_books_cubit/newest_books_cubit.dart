import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/Data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> FetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errorMassage));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
