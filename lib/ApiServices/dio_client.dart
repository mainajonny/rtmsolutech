import 'package:dio/dio.dart';

import 'repository/api_interceptor.dart';
import 'repository/api_logs_interceptor.dart';
import 'repository/api_repository.dart';

class DioClient {
  Dio init() {
    Dio dio = Dio();
    dio.interceptors.addAll([ApiInterceptor(dio), LoggingInterceptor()]);
    dio.transformer;
    dio.options.baseUrl = Repository.baseurl;
    dio.options.connectTimeout = Duration(milliseconds: 60000);
    dio.options.receiveTimeout = Duration(milliseconds: 60000);

    return dio;
  }
}
