import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
import 'package:meta/meta.dart';

import '../../data/model/book_model/book_model.dart';
import '../../data/repos/home_repo.dart';

part 'newest_state.dart';

class NewestCubit extends Cubit<NewestState> {
  NewestCubit(this.homeRepo) : super(NewestInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks()async{
    emit(FeaturedNewestBooksLoading());
    var response=await homeRepo.fetchBestSellerBooks();
    response.fold((failure){
      emit(FeaturedNewestBooksFailure(failure.errMassege));
    }, (books){
      emit(FeatureNewestBooksSuccess(books));
    });

  }
}
