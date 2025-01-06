part of 'books_cubit.dart';

@immutable
sealed class BooksState {}

final class BooksInitial extends BooksState {}

final class FeaturedBooksLoading extends BooksState {}

final class FeaturedBooksFailure extends BooksState {
  final String errMessage;

  FeaturedBooksFailure(this.errMessage);
}

final class FeatureBooksSuccess extends BooksState {
  final List<BookModel> books;

  FeatureBooksSuccess(this.books);
}
