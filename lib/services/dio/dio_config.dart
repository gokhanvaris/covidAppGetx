import 'package:covidapp/services/dio/dio_interceptors.dart';
import 'package:dio/dio.dart';

Dio getDio(BaseOptions baseOptions) {
  Dio dio = Dio(baseOptions);
  dio.interceptors.add(BaseInterceptor());
  return dio;
}
