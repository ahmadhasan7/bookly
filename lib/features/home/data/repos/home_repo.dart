
import 'package:bookly/core/utils/classes/failure.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>>fetchFeatureBooks();
  Future<Either<Failure,List<BookModel>>>fetchBestSellerBooks();
}