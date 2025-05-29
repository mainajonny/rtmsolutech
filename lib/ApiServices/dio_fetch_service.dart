import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'dio_client.dart';
import 'repository/api_repository.dart';

class DioFetchService extends DioClient {
  final Dio dio = DioClient().init();

  Future<Response> fetchVisits() async {
    try {
      return await dio.get(Repository.visits);
    } on DioException catch (ex) {
      debugPrint('## Error: $ex');
      throw Exception(ex);
    }
  }

  Future<Response> fetchCustomers() async {
    try {
      return await dio.get(Repository.customers);
    } on DioException catch (ex) {
      debugPrint('## Error: $ex');
      throw Exception(ex);
    }
  }

  Future<Response> fetchActivities() async {
    try {
      return await dio.get(Repository.activities);
    } on DioException catch (ex) {
      debugPrint('## Error: $ex');
      throw Exception(ex);
    }
  }
}
