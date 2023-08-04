import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://newsapi.org/',
      receiveDataWhenStatusError: true,
    ),
  );

  /*static Future<Response> getDate(
      {required String url, required Map<String, dynamic> query}) async {
    return await dio.get(url, queryParameters: query);
  }*/

  static Future<Response> getDate(
      {required String query}) async {
    return await dio.get(
        'https://newsapi.org/v2/top-headlines?$query&apiKey=7cfeee815042464cb7855fb97e35ba72');
  }

}
