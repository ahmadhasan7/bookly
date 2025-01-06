part of 'newest_cubit.dart';

@immutable
sealed class NewestState {}

final class NewestInitial extends NewestState {}
final class FeaturedNewestBooksLoading extends NewestState {}

final class FeaturedNewestBooksFailure extends NewestState {
  final String errMessage;

  FeaturedNewestBooksFailure(this.errMessage);
}

final class FeatureNewestBooksSuccess extends NewestState {
  final List<BookModel> books;

  FeatureNewestBooksSuccess(this.books);
}
