import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioNetwork {
  static Future<Dio> dioCreate() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    final Dio dio = Dio(BaseOptions(baseUrl: 'https://api.matule.ru/api'));
    if (token != null) {
      dio.options.headers['Authorization'] = 'Bearer $token';
    }
    return dio;
  }
}
