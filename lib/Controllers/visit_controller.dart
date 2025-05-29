import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:routetomarket/Utils/constants.dart';

import '../ApiServices/dio_fetch_service.dart';
import '../ApiServices/dio_post_service.dart';
import '../Models/util_models.dart';
import '../Models/visits/visit_model.dart';

class VisitController extends GetxController {
  var isLoading = false.obs;
  var hasError = false.obs;
  var errorMsg = ''.obs;

  var postIsLoading = false.obs;
  var postHasError = false.obs;
  var postErrorMsg = ''.obs;

  var selectedVisit = VisitModel().obs;

  Future<void> getAllVisits() async {
    isLoading(true);
    hasError(false);

    var res = await DioFetchService().fetchVisits();

    try {
      if (res.statusCode == 200) {
        String jsonString = json.encode({"visits": res.data});
        visitsInfo = json.decode(jsonString);
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

  Future<void> addVisit(request) async {
    postIsLoading(true);
    postHasError(false);

    final json = jsonEncode(request);
    var res = await DioPostService().postVisit(json);

    try {
      if (res.statusCode == 201) {
        Navigator.pop(Get.context!);
        Fluttertoast.showToast(
          msg: 'Task added successfully!',
          backgroundColor: Colors.green,
          toastLength: Toast.LENGTH_LONG,
          textColor: kWhiteColor,
        );
        getVisits(); // refrsh your visits if add is successfull
      } else {
        postHasError(true);
        postErrorMsg(res.data['message']);
      }
    } catch (e) {
      debugPrint('## err : $e');
      postHasError(true);
      postErrorMsg(res.data['message']);
    } finally {
      postIsLoading(false);
    }
  }
}
