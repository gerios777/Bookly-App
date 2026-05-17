import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/Data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'fetured_books_cubit_state.dart';

class FeturedBooksCubit extends Cubit<FeturedBooksCubitState> {
  FeturedBooksCubit() : super(FeturedBooksCubitInitial());
}
