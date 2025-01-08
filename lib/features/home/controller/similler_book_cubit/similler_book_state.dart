part of 'similler_book_cubit.dart';

@immutable
sealed class SimillerBookState {}

final class SimillerBookInitial extends SimillerBookState {}
final class SimilleBooksLoading extends SimillerBookState{}
final class SimillerBooksFailure extends SimillerBookState{
  final String errMassege;

   SimillerBooksFailure(this.errMassege);
}
final class SimillerBooksSuccess extends SimillerBookState{
  final List<BookModel> books;

  SimillerBooksSuccess(this.books);
}
