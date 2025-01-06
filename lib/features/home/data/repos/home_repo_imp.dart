import 'package:bookly/core/utils/classes/api_services.dart';
import 'package:bookly/core/utils/classes/failure.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp extends HomeRepo {
  final ApiServices apiServices;

  HomeRepoImp(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      List<BookModel> books = [];
      var data = await apiServices.get(
          endPoint:
              "volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest");
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      List<BookModel> books = [];
      var data = await apiServices.get(
          endPoint:
          "volumes?Filtering=free-ebooks&q=subject:programming");
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
