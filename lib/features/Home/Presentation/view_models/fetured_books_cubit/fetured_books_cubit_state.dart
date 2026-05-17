part of 'fetured_books_cubit.dart';

sealed class FeturedBooksCubitState extends Equatable {
  const FeturedBooksCubitState();

  @override
  List<Object> get props => [];
}

final class FeturedBooksCubitInitial extends FeturedBooksCubitState {}

final class FeturedBooksCubitLoading extends FeturedBooksCubitState {}

final class FeturedBooksCubitSuccess extends FeturedBooksCubitState {
  final List<BookModel> books;
  const FeturedBooksCubitSuccess(this.books);
}

final class FeturedBooksFailure extends FeturedBooksCubitState {
  final String errorMessage;

  const FeturedBooksFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
