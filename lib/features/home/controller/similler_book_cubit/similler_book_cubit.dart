import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../data/model/book_model/book_model.dart';

part 'similler_book_state.dart';

class SimillerBookCubit extends Cubit<SimillerBookState> {
  SimillerBookCubit(this.homeRepo, this.bookModel)
      : super(SimillerBookInitial());
  final HomeRepo homeRepo;
  final BookModel bookModel;

  Future<void> fetchSimillerBooks() async {
    emit(SimilleBooksLoading());
    var res = await homeRepo.fetchSimillerBooks(
        category: bookModel.volumeInfo.categories![0]);
    res.fold((failure) {
      emit(SimillerBooksFailure(failure.errMassege));
    }, (book) {
      emit(SimillerBooksSuccess(book));
    });
  }
}
