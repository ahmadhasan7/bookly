import 'package:dio/dio.dart';

abstract class Failure {
  final String errMassege;
  Failure(this.errMassege);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMassege);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection TimeOut With ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(' Send TimeOut With ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive With ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate With ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request to ApiServer Was Canceled");
      case DioExceptionType.connectionError:
        {
          if (dioError.message!.contains("SocketException")) {
            return ServerFailure("the connect is lost, Please try again");
          }
          return ServerFailure(".....UnKnow Error,Please try again");
        }
      case DioExceptionType.unknown:
        return ServerFailure("UnKnow Error,Please try again....");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic body) {
    print ('The StatusCode Is $statusCode');
    if (statusCode == 401 || statusCode == 403 || statusCode == 400) {
      return ServerFailure(body['error']['Message']);
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error, Please Try Again");
    } else if (statusCode == 404) {
      return ServerFailure("Your Request not found, please try later");
    }
    return ServerFailure("UnKnow Error Was Happened,Please Try Again");
  }
}
