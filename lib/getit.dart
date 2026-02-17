import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:matule2026/login.dart';
import 'package:network/network.dart';

GetIt getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerLazySingleton<Dio>(
    () => Dio(BaseOptions(baseUrl: 'http://10.0.2.2:8090/api')),
  );
  getIt.registerLazySingleton<Network>(() => Network(dio: getIt()));
}
