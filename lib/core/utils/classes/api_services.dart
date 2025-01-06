import 'package:dio/dio.dart';

class ApiServices {
  final _baseurl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiServices({required this.dio});

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_baseurl$endPoint');
    return response.data;
  }
}
