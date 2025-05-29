import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../ApiServices/dio_fetch_service.dart';
import '../Models/util_models.dart';

class ActivityController extends GetxController {
  var isLoading = false.obs;
  var hasError = false.obs;
  var errorMsg = ''.obs;

  Future<void> getAllActivities() async {
    isLoading(true);
    hasError(false);

    var res = await DioFetchService().fetchActivities();

    try {
      if (res.statusCode == 200) {
        String jsonString = json.encode({"activities": res.data});
        activitiesInfo = json.decode(jsonString);
      } else {
        hasError(true);
        errorMsg(res.data['message']);
      }
    } catch (e) {
      debugPrint('## err : $e');
      hasError(true);
      errorMsg(res.data['message']);
    } finally {
      isLoading(false);
    }
  }
}
