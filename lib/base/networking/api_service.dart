import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../common/api_const.dart';

class ApiService extends GetConnect {
  ApiService() {
    httpClient.baseUrl = apiConst.main;
    httpClient.defaultContentType = "application/json";
    httpClient.timeout = const Duration(minutes: 1);
  }

  Future<Map<String, dynamic>> getM(String url, Map<String, dynamic>? params,
      {bool hasHeaders = true, String? appToken}) async {
    Map<String, String> mapHeaders = {};
    // final token = appToken ?? StorageData.instance.getAppToken();
    // if (hasHeaders && token != null) {
    //   mapHeaders["authorization"] = "Bearer $token";
    // }
    // mapHeaders["imei"] = await MerUtils.getDeviceId();
    Response response = await get(url, query: params, headers: mapHeaders);
    _apiDebug(
      url: "GET: ${httpClient.baseUrl}$url",
      headers: mapHeaders,
      formData: null,
      params: params,
      response: response,
    );
    return _apiMap(response);
  }

  Map<String, dynamic> _apiMap(Response response) {
    Map<String, dynamic> map = Map.from(response.body);
    return map;
  }

  String errorHttp(Response response) {
    if (response.status.connectionError) {
      return 'Network Error'.tr;
    }
    return response.statusText ?? '';
  }

  _apiDebug({
    required String url,
    required Map<String, String> headers,
    required FormData? formData,
    Map<String, dynamic>? params,
    required Response response,
  }) {
    debugPrint("-----------------------------------");
    debugPrint(url);
    debugPrint('Headers: ${headers.toString()}');
    debugPrint('Params: ${formData ?? params.toString()}');
    debugPrint("${response.statusCode}, ${response.statusText}");
    log(response.body.toString());
    debugPrint("-----------------------------------");
  }
}

final apiService = ApiService();
