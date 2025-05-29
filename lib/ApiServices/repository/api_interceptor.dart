// ignore_for_file: unnecessary_overrides

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiInterceptor extends Interceptor {
  ApiInterceptor(this.dio);
  final Dio dio;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    Map<String, dynamic> headers() {
      String apiKey =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtxZ2JmdHdzb2RwdHRwcWdxbmJoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDU5ODk5OTksImV4cCI6MjA2MTU2NTk5OX0.rwJSY4bJaNdB8jDn3YJJu_gKtznzm-dUKQb4OvRtP6c';

      //TODO handle more intercrptions using "RequestOptions"

      return {'apikey': apiKey};
    }

    options.headers.addAll(headers());

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    int? code = err.response?.statusCode;
    String? message = err.response?.statusMessage;

    debugPrint(
      '## ERROR : $err\n## STATUS CODE: $code\n## MESSAGE: $message\n## PATH: ${err.requestOptions.path}\n## BODY: ${err.response?.data}',
    );

    switch (code) {
      case 401:
        // TODO handle refresh here for either apikey or/and token
        break;
      default:
      // TODO handle default API resolution
    }

    return super.onError(err, handler);
  }
}
