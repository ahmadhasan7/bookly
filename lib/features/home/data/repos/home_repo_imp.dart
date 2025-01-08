import 'package:bookly/core/utils/classes/api_services.dart';
import 'package:bookly/core/utils/classes/checkinternet.dart';
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
      if (await checkInternet()) {
        List<BookModel> books = [];
        var data = await apiServices.get(
            endPoint:
                "volumes?Filtering=free-ebooks&q=subject:computer science&sorting=newest");
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return Right(books);
      } else {
        return Left(ServerFailure("No Internet Connection"));
      }
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      if (await checkInternet()) {
        List<BookModel> books = [];
        var data = await apiServices.get(
            endPoint: "volumes?Filtering=free-ebooks&q=subject:programming");
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return Right(books);
      } else {
        return Left(ServerFailure("No Internet Connection"));
      }
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimillerBooks(
      {required String category}) async {
    try {
      if (await checkInternet()) {
        List<BookModel> books = [];
        var data = await apiServices.get(
            endPoint:
                'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        print(books);
        return Right(books);

      } else {
        return Left(ServerFailure("No Internet Connection"));
      }
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
