import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://gnews.io/',
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
        'https://newsapi.org/v2/$query&apikey=7cfeee815042464cb7855fb97e35ba72');
        //'https://gnews.io/api/v4/$query&apikey=799d231dbd4a8e14598372b927f967d1');
  }

}
