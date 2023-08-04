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
        'https://gnews.io/api/v4/top-headlines?$query&apikey=799d231dbd4a8e14598372b927f967d1');
  }

}
