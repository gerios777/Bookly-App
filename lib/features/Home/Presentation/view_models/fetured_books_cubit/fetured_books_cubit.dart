import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/Data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetured_books_cubit_state.dart';

class FeturedBooksCubit extends Cubit<FeturedBooksCubitState> {
  FeturedBooksCubit(this.homeRepo) : super(FeturedBooksCubitInitial());

  final HomeRepo homeRepo;

  Future<void> FetchFeaturedBooks() async {

    emit(FeturedBooksCubitLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeturedBooksFailure(failure.errorMassage));
    }, (books) {
      emit(FeturedBooksCubitSuccess(books));
    });
  }
}
