import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'dio_client.dart';
import 'repository/api_repository.dart';

class DioPostService extends DioClient {
  final Dio dio = DioClient().init();

  Future<Response> postVisit(data) async {
    try {
      return await dio.post(Repository.visits, data: data);
    } on DioException catch (ex) {
      debugPrint('## Error: $ex');
      throw Exception(ex);
    }
  }
}
