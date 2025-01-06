import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../data/model/book_model/book_model.dart';
import '../../data/repos/home_repo.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit(this.homeRepo) : super(BooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBooks()async{
    emit(FeaturedBooksLoading());
    var response=await homeRepo.fetchFeatureBooks();
    response.fold((failure){
      emit(FeaturedBooksFailure(failure.errMassege));
    }, (books){
      emit(FeatureBooksSuccess(books));
    });

  }

}
